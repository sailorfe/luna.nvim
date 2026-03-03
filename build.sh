#!/usr/bin/env bash
set -euo pipefail
shopt -s extglob

THEME="luna"

case "$@" in

# == vim build ==
vim)
  CURRENT_BRANCH=$(git rev-parse --abbrev-ref HEAD)

  if [[ -n $(git status -s) ]]; then
    echo "working directory is dirty"
    exit 1
  fi

  echo "switching to vim branch..."
  git checkout vim 2>/dev/null || git checkout -b vim

  echo "building $THEME vimscript..."
  cat <<-x0 >./shipwright_build.lua
local shipwright = require("shipwright")
local lushwright = require("shipwright.transform.lush")
local overwrite = require("shipwright.transform.overwrite")
local colorscheme = require("lush_theme.$THEME")
local function clean_for_vim(lines)
    local cleaned = {}
    for _, line in ipairs(lines) do
        if not line:match("[@%.]") then
            local scrubbed = line:gsub("^highlight", "hi")
            -- strip breaking attributes
            scrubbed = scrubbed:gsub("strikethrough", "")
            scrubbed = scrubbed:gsub("undercurl", "underline")
            scrubbed = scrubbed:gsub("blend=[^%%s]+", "")
            -- clean up equals
            scrubbed = scrubbed:gsub("gui=%s*$", ""):gsub("guibg=%s*$", ""):gsub("guifg=%s*$", "")
            table.insert(cleaned, scrubbed)
        end
    end
    return cleaned
end
shipwright.run(colorscheme, lushwright.to_vimscript, clean_for_vim, {overwrite, "colors/$THEME.vim.tmp"})
x0
  nvim --headless +Shipwright +qa
  cat <<-x0 >./colors/$THEME.vim
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name="$THEME"
set background=dark
if has("termguicolors")
  set termguicolors
endif
$(cat ./colors/$THEME.vim.tmp | sort)
hi! link htmlLink String
hi! link mkdLink String
hi! link mkdURL Identifier
hi SpellBad gui=undercurl guibg=NONE
hi Error guibg=NONE
hi! link Title Normal
hi mkdHeading guibg=NONE gui=bold
x0
  rm ./colors/*.vim.tmp ./shipwright_build.lua

  git add ./colors/$THEME.vim
  git commit -m "build(vim): update vimscript distrubtion"
  echo "$THEME vim build complete. return to $CURRENT_BRANCH"
  git checkout "$CURRENT_BRANCH"
  ;;

# == lua build ==
lua)
  echo "building $THEME lua..."
  cat <<-x0 >./shipwright_build.lua
local colorscheme = require("lush_theme.$THEME")
local lushwright = require("shipwright.transform.lush")
run(colorscheme, lushwright.to_lua, {overwrite, "lua/$THEME/theme.lua.tmp"})
x0
  nvim --headless +Shipwright +qa
  echo 'L = {}' >./lua/$THEME/theme.lua
  echo '---@return table' >>./lua/$THEME/theme.lua
  echo 'L.build = function()' >>./lua/$THEME/theme.lua
  echo '  local theme = {' >>./lua/$THEME/theme.lua
  cat ./lua/$THEME/theme.lua.tmp >>./lua/$THEME/theme.lua
  echo '  }' >>./lua/$THEME/theme.lua
  echo '  return theme' >>./lua/$THEME/theme.lua
  echo 'end' >>./lua/$THEME/theme.lua
  echo 'return L' >>./lua/$THEME/theme.lua
  rm ./lua/$THEME/theme.lua.tmp ./shipwright_build.lua
  echo "$THEME lua build complete"
  ;;

*)
  echo "usage: ./build.sh (vim|lua)"
  ;;
esac
