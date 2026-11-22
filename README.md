# Stencil

A color scheme for Neovim inspired by [Tonsky's Alabaster](https://tonsky.me/blog/syntax-highlighting/).

The idea is to replace "Christmas lights" with colors tied to semantics:

- **green** for type declarations
- **red** for function and method declarations
- **blue** for variable, field and property declarations
- **purple** for constants
- **cyan** for strings
- **yellow** for comments — they are written to be read by humans, so they deserve attention, not dimming

The scheme inherits the exact colors from the terminal emulator (tested with Ghostty's black and white schemes). This means the theme disables `termguicolors`.

## Installation

For **lazy.nvim**:

```lua
{
  "cranberry-clockworks/stencil",
  priority = 1000,
  config = function()
    vim.cmd.colorscheme("stencil")
  end,
}
```

