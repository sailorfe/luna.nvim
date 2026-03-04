# luna.nvim

a purple neo/vim colorscheme spiritually descended from [fairyfloss](https://github.com/sailorhg/fairyfloss) and the lighter, lower-contrast twin of [moonqueen.nvim](https://codeberg.org/sailorfe/moonqueen.nvim). currently ported for foot and alacritty.

<div align="center">

![foot](ansi.png)

</div>

<!-- toc -->

- [palette](#palette)
- [installation](#installation)
    * [lua](#lua)
    * [vimscript](#vimscript)
- [extras](#extras)
- [contributing](#contributing)
- [acknowledgments](#acknowledgments)

<!-- tocstop -->

this repository is mirrored to [github](https://github.com/sailorfe/luna.nvim) from [codeberg](https://codeberg.org/sailorfe/luna.nvim).

## palette
| key       | hex           |
| --------- | ------------- |
| base      | `#271B2D`    |
| surface   | `#372640` |
| overlay   | `#483253` |
| text      | `#EAD9F2`    |
| light     | `#F8EBFF`   |
| mars    | `#F07575`  |
| jupiter    | `#D1F075`  |
| venus   | `#F0D175` |
| mercury   | `#7DB2E8` |
| saturn    | `#B27DE8`  |
| moon    | `#E87DB3`  |
| low       | `#291D2F`     |
| med       | `#523C5D`     |
| high      | `#7A5C8A`    |

## installation

### lua

with lazy:

```lua
return {
    "https://codeberg.org/sailorfe/luna.nvim",
--    init = function()
--        vim.cmd.colorscheme("luna")
--    end,
}
```

alternately, you can skip `init = function()` and declare `vim.cmd.colorscheme('luna')` somewhere in your `init.lua` after plugin load.

### vimscript

with vim-plug:

```vim
Plug 'https://codeberg.org/sailorfe/luna.nvim', { 'as': 'luna', 'branch': 'main' }
```

or you can place `colors/luna.vim` anywhere in your runtimepath:

```sh
curl -LO https://codeberg.org/sailorfe/luna.nvim/raw/branch/main/extras/vim/luna.vim
```

then set colorscheme with `colorscheme luna` either in your `vimrc` or temporarily with a command:

```vim
" .vimrc
set background=dark
syntax on 
colorscheme luna
```

## extras

there is an `extras/` directory with ports for

- [alacritty](https://alacritty.org)
- [foot](https://codeberg.org/dnkl/foot)
- [termux](https://termux.dev)
- `tty` for the console
- [vim](https://www.vim.org)
- [wezterm](https://wezterm.org)

## contributing

theme generation takes the following steps:

- create `templates/$APP.*`:
    * for hex codes prefixed with hashes (`#B27DE8`), use `[[key]]` (examples: `alacritty.toml`, `wezterm.toml`).
    * for hex codes *without* hashes (`B27DE8`), use `{{key}}` (examples: (`foot.ini`, `tty.conf`).
- add the output path `$APP/luna.*` to the `outputs` dictionary in `generator.py`.
- ensure `palette.json` is up to date: `nvim --headless -c "luafile hex.lua" -c "qa"`.
- run `python3 generator.py`.

make pull requests to [codeberg](https://codeberg.org/sailorfe/luna.nvim/pulls).

## acknowledgments

- [fairyfloss](https://github.com/sailorhg/fairyfloss) for inspiring this journey into colorschemes to begin with, and the low-contrast, magical girl vibes
- [evangelion.nvim](https://github.com/xero/evangelion.nvim) for weeb + `build.sh` inspiration
- [tokyonight.nvim](https://github.com/folke/tokyonight.nvim) for repository structure
