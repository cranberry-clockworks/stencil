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

# Screenshots
## Moonfly

<img width="1624" height="1061" alt="Screenshot 2026-11-22 at 19 24 00" src="https://github.com/user-attachments/assets/0a606e40-b13b-48d7-aae7-320785fefcd2" />
<img width="1624" height="1061" alt="Screenshot 2026-11-22 at 19 25 58" src="https://github.com/user-attachments/assets/00cca483-d52f-4757-9a69-4d50e1e46d18" />
<img width="1624" height="1061" alt="Screenshot 2026-11-22 at 19 25 06" src="https://github.com/user-attachments/assets/e405be64-bcbd-47fd-b045-11ba68f1eb4d" />


## Alabaster

<img width="1624" height="1061" alt="Screenshot 2026-11-22 at 19 28 50" src="https://github.com/user-attachments/assets/3afd9422-aebc-4b06-bd67-208c9e13193e" />
