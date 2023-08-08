from collections import namedtuple
from contextlib import contextmanager
from pathlib import Path
import subprocess
import shutil
from pprint import pprint


Pathable = Path | str


@contextmanager
def htmx_repo_clone(target_dir: Path = None) -> Path:
    if not target_dir:
        target_dir = Path("./htmx")

    # git clone
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


def extract_docs(doc_file: Pathable) -> str:
    content = Path(doc_file).read_text()
    paragraphs = content.split("\n\n")
    return paragraphs[1].replace('\n', '\\n')


def extract_attributes(repo: Pathable) -> list[dict[str, str]]:
    attributes = []

    attribute_dir = Path(repo).joinpath("www", "content", "attributes")

    for doc_file in attribute_dir.glob("hx-*"):
        name = doc_file.stem
        attributes.append(
            {
                "label": name,
                "insertText": f'{name}=""',
                "filterText": name,
                "documentation": extract_docs(doc_file)
            }
        )

    return attributes


def to_lua(
    cmp_data: list[dict[str, str]],
    target_file: Path = Path("./attribute-list.lua"),
    overwrite: bool = False,
):
    def item_to_lua(item):
        fields = ", ".join(fr"{key} = '{val}'" for key, val in item.items())
        return "{ " + fields + " }"

    start = "return {"
    end = "}"
    items = ",\n\t".join(item_to_lua(item) for item in cmp_data)

    Path(target_file).write_text(f"{start}\n{items}\n{end}\n")


if __name__ == "__main__":
    dev = True
    with htmx_repo_clone() as htmx_dir:
        attr_items = extract_attributes(htmx_dir)
        print(to_lua(attr_items))
