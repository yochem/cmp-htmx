# cmp-htmx

HTMX source to use with [nvim-cmp](https://github.com/hrsh7th/nvim-cmp). Still
under development. Current feature list and TODO's:

- [x] Get all HTMX attributes and add to completion menu
- [x] Labels
- [x] `InsertText` with set cursor position between the quotes.
- [x] Documentation
- [ ] Documentation in Markdown
- [ ] Reference in documentation to full documentation online
- [ ] Placeholders in inserted text
- [ ] More...

## Install

E.g. using lazy.nvim:

```lua
{
    "hrsh7th/nvim-cmp",
    dependencies = {
        "yochem/cmp-htmx"
    },
    config = {
        sources = require('cmp').config.sources({
            { name = "cmp-htmx" }
        }
    }
}
```
