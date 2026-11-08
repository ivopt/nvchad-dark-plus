# nvchad-dark-plus

A dark [NvChad](https://nvchad.com) theme with the token colours of VS Code's Dark+, mapped onto treesitter captures. Brackets, dots, commas and operators use the normal text colour.

## Install

Copy `dark_plus.lua` into your NvChad config:

```sh
mkdir -p ~/.config/nvim/lua/themes
cp dark_plus.lua ~/.config/nvim/lua/themes/
```

Then pick `dark_plus` with `<leader>th`, or set it in `lua/chadrc.lua`:

```lua
M.base46 = {
  theme = "dark_plus",
}
```

## Palette

| Code | Colour |
|---|---|
| Text, brackets, delimiters, operators | `#D4D4D4` |
| Comments | `#6A9955` |
| Control keywords (`def`, `class`, `if`, `end`, `return`) | `#C586C0` |
| Types, classes and constants | `#4EC9B0` |
| Functions and method calls | `#DCDCAA` |
| Variables, members and parameters | `#9CDCFE` |
| Strings | `#CE9178` |
| Numbers | `#B5CEA8` |
| Literals and builtins (`true`, `nil`, `self`, `:symbols`) | `#569CD6` |
| Background | `#1E1E1E` |

## License

[GPL-3.0](LICENSE)
