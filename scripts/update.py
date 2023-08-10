from contextlib import contextmanager
import os
from pathlib import Path
import subprocess
import shutil
import typing

Pathlike = typing.Union[os.PathLike, str]


@contextmanager
def htmx_repo_clone(target_dir: Path = None) -> Path:
    if not target_dir:
        target_dir = Path("./htmx")

    subprocess.run(
        [
            "git",
            "clone",
            "https://github.com/bigskysoftware/htmx.git",
            str(target_dir.resolve()),
        ],
        capture_output=True,
        check=False,
    )

    try:
        yield target_dir
    finally:
        if not dev:
            shutil.rmtree(target_dir)


def extract_docs(doc_file: Pathlike) -> str:
    content = Path(doc_file).read_text()
    paragraphs = content.split("\n\n")
    return paragraphs[1].replace("\n", "\\n")


def extract_attributes(repo: Pathlike) -> list[dict[str, str]]:
    attributes = []

    attribute_dir = Path(repo).joinpath("www", "content", "attributes")

    # completion kind corresponds to 'Value', like vscode-html-server does
    # for other attributes
    # (See LSP documentation: #completionItemKind)
    completion_kind_value = 12

    for doc_file in attribute_dir.glob("hx-*"):
        name = doc_file.stem
        attributes.append(
            {
                "label": name,
                "insertText": f'{name}="$1"$0',
                "filterText": name,
                "documentation": extract_docs(doc_file),
                "insertTextFormat": 2,
                "kind": completion_kind_value
            }
        )

    return attributes


def to_lua(
    cmp_data: list[dict[str, str]],
    target_file: Path = Path("./attribute-list.lua"),
    overwrite: bool = False,
):
    def item_to_lua(item):
        # repr() is a hack to add quotes around string values
        fields = ", ".join(rf"{key} = {repr(val)}" for key, val in item.items())
        return "{ " + fields + " }"

    start = "return {"
    end = "}"
    items = ",\n\t".join(item_to_lua(item) for item in cmp_data)

    target_file = Path(target_file)
    # if target_file.exists() and not overwrite:
    #     raise
    Path(target_file).write_text(f"{start}\n{items}\n{end}\n")


if __name__ == "__main__":
    dev = True
    with htmx_repo_clone() as htmx_dir:
        attr_items = extract_attributes(htmx_dir)
        to_lua(attr_items, target_file='../lua/attribute-list.lua')
