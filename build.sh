#!/usr/bin/env bash
set -euo pipefail
shopt -s extglob

THEME="luna"

case "${1:-}" in
# == vim build ==
vim)
  CURRENT_BRANCH=$(git rev-parse --abbrev-ref HEAD)
  if [[ -n $(git status -s) ]]; then
    echo "working directory is dirty. commit/stash first."
    exit 1
  fi

  echo "building $THEME vimscript..."
  cat <<-'x0' >./shipwright_build.lua
	local shipwright = require("shipwright")
	local lushwright = require("shipwright.transform.lush")
	local overwrite = require("shipwright.transform.overwrite")
	local colorscheme = require("lush_theme.luna")
	local function clean_for_vim(lines)
	    local cleaned = {}
	    for _, line in ipairs(lines) do
	        if not line:match("[@%%.]") then
	            local scrubbed = line:gsub("^highlight", "hi")
	            scrubbed = scrubbed:gsub("strikethrough", "")
	            scrubbed = scrubbed:gsub("undercurl", "underline")
	            scrubbed = scrubbed:gsub("blend=[^%%s]+", "")
	            scrubbed = scrubbed:gsub("gui=%%s*$", ""):gsub("guibg=%%s*$", ""):gsub("guifg=%%s*$", "")
	            table.insert(cleaned, scrubbed)
	        end
	    end
	    return cleaned
	end
	shipwright.run(colorscheme, lushwright.to_vimscript, clean_for_vim, {overwrite, "colors/luna.vim.tmp"})
	x0

  nvim --headless +Shipwright +qa

  FINAL_FILE="/tmp/$THEME.vim"
  cat <<-x0 >"$FINAL_FILE"
	hi clear
	if exists("syntax_on")
	  syntax reset
	endif
	let g:colors_name="$THEME"
	set background=dark
	if has("termguicolors")
	  set termguicolors
	endif
	x0

  if [ -f "./colors/$THEME.vim.tmp" ]; then
    sort "./colors/$THEME.vim.tmp" >>"$FINAL_FILE"
  else
    echo "error: tmp file not found!"
    exit 1
  fi

  cat <<-x0 >>"$FINAL_FILE"
	hi! link htmlLink String
	hi! link mkdLink String
	hi! link mkdURL Identifier
	hi SpellBad gui=undercurl guibg=NONE
	hi Error guibg=NONE
	hi! link Title Normal
	hi mkdHeading guibg=NONE gui=bold
	x0

  rm ./colors/*.vim.tmp ./shipwright_build.lua

  echo "switching to vim branch..."
  if ! git rev-parse --verify vim >/dev/null 2>&1; then
    git checkout --orphan vim
    git rm -rf . --quiet
  else
    git checkout vim
    git ls-files | xargs rm -rf
    git clean -fd
  fi

  mkdir -p colors
  mv "$FINAL_FILE" "./colors/$THEME.vim"
  git add "colors/$THEME.vim"

  if ! git diff --cached --quiet; then
    git commit -m "build(vim): update distribution $(date +%Y-%m-%d)"
  else
    echo "no changes to commit."
  fi

  git checkout "$CURRENT_BRANCH"
  echo "done. back on $CURRENT_BRANCH"
  ;;

# == lua build ==
lua)
  echo "building $THEME lua..."
  cat <<-'x0' >./shipwright_build.lua
	local shipwright = require("shipwright")
	local lushwright = require("shipwright.transform.lush")
	local overwrite = require("shipwright.transform.overwrite")
	local colorscheme = require("lush_theme.luna")
	shipwright.run(colorscheme, lushwright.to_lua, {overwrite, "lua/luna/theme.lua.tmp"})
	x0

  nvim --headless +Shipwright +qa

  cat <<-x0 >"./lua/$THEME/theme.lua"
	L = {}
	---@return table
	L.build = function()
	  local theme = {
	x0
  cat "./lua/$THEME/theme.lua.tmp" >>"./lua/$THEME/theme.lua"
  cat <<-x0 >>"./lua/$THEME/theme.lua"
	  }
	  return theme
	end
	return L
	x0

  rm "./lua/$THEME/theme.lua.tmp" ./shipwright_build.lua
  echo "$THEME lua build complete"
  ;;

*)
  echo "usage: ./build.sh (vim|lua)"
  ;;
esac
