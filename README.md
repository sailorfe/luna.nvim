# luna.nvim

a purple neo/vim colorscheme spiritually descended from [fairyfloss](https://github.com/sailorhg/fairyfloss) and the lighter, lower-contrast twin of [moonqueen.nvim](https://codeberg.org/sailorfe/moonqueen.nvim). currently ported for foot and alacritty.

<div align="center">

![foot](json.png)

</div>

<!-- toc -->

- [installation](#installation)
    * [lua](#lua)
    * [vimscript](#vimscript)
- [extras](#extras)
- [contributing](#contributing)
- [acknowledgments](#acknowledgments)

<!-- tocstop -->

this repository is mirrored to [github](https://github.com/sailorfe/luna.nvim) from [codeberg](https://codeberg.org/sailorfe/luna.nvim).

## installation

### lua

with lazy:

```lua
return {
    "https://codeberg.org/sailorfe/luna.nvim",
    init function()
        vim.cmd.colorscheme("luna")
    end,
}
```

or, instead of `init function()`, call `vim.cmd.colorscheme('luna')` in your `init.lua` after plugin load.

### vimscript

with vim-plug:

```vim
Plug 'https://codeberg.org/sailorfe/luna.nvim', { 'as': 'luna', 'branch': 'vim' }
```

or place `colors/luna.vim` anywhere in your runtime path:

```sh
curl -LO https://codeberg.org/sailorfe/luna.nvim/raw/branch/vim/colors/luna.vim
```

then set colorscheme with `colorscheme luna` in your `vimrc` or temporarily as a command.

## extras

there is an `extras/` dir with ports for

- [alacritty](https://alacritty.org)
- [foot](https://codeberg.org/dnkl/foot)
- [termux](https://termux.dev)
- `tty` for the console

## contributing

if you would like to port luna to another terminal emulator or application, see `generator.py`. you'll have to write a dictionary template, but `generator.py` handles injecting hex values from `palette.json`. [submit pull requests on codeberg](https://codeberg.org/sailorfe/luna.nvim/pulls).

## acknowledgments

- [fairyfloss](https://github.com/sailorhg/fairyfloss) for inspiring this journey into colorschemes to begin with, and the low-contrast, magical girl vibes
- [evangelion.nvim](https://github.com/xero/evangelion.nvim) for the entire shipwright build model
- [tokyonight.nvim](https://github.com/folke/tokyonight.nvim) for dir structure
