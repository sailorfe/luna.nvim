# luna.nvim

a purple neovim colorscheme spiritually descended from [fairyfloss](https://github.com/sailorhg/fairyfloss) and the lighter, lower-contrast twin of [moonqueen.nvim](https://codeberg.org/sailorfe/moonqueen.nvim). currently ported for foot and alacritty.

<div align="center">

![foot](grim.png)

</div>

<!-- toc -->

- [installation](#installation)
    * [lua](#lua)
    * [vimscript](#vimscript)
- [extras](#extras)
- [acknowledgments](#acknowledgments)

<!-- tocstop -->

this repository is mirrored to [github](https://github.com/sailorfe/luna.nvim) from [codeberg](https://codeberg.org/sailorfe/luna.nvim).

## installation

### lua

with lazy:

```lua
return {
    "https://codeberg.org/sailorfe/luna.nvim",
    dependencies = "rktjmp/lush.nvim",
    init function()
        vim.cmd.colorscheme("luna")
    end,
}
```

or, instead of `init function()`, call `vim.cmd.colorscheme('luna')` in your `init.lua` after plugin load.

### vimscript

with vim-plug:

```vim
Plug 'https://codeberg.org/sailorfe/luna.nvim', { 'as': 'luna' }
```

or place `colors/luna.vim` anywhere in your runtime path:

```sh
curl -LO https://codeberg.org/sailorfe/luna.nvim/raw/branch/main/colors/luna.vim
```

then set colorscheme with `colorscheme luna` in your `vimrc` or temporarily as a command.

## extras

there is an `extras/` dir with ports for

- `alacritty` and `foot`: what i alternate between in [my sway setup](https://codeberg.org/sailorfe/dots)
- `tty`: plain bash colors for the console

`luna.json` is included in case you want to port this theme to whatever emulator you use. if you do, [please make pull request](https://codeberg.org/sailorfe/luna.nvim/pulls)!

## acknowledgments

- [fairyfloss](https://github.com/sailorhg/fairyfloss) for inspiring this journey into colorschemes to begin with, and the low-contrast pastels
- [evangelion.nvim](https://github.com/xero/evangelion.nvim) for entire chunks of lua and weeb inspiration
- [tokyonight.nvim](https://github.com/folke/tokyonight.nvim) for dir structure
