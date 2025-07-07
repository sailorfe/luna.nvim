-- LUA shipwright_build.lua

local lushwright = require("shipwright.transform.lush")
run(require("lua.lush_theme.luna"),
	lushwright.to_lua,
	{patchwrite, "lua/luna/theme.lua", "-- PATCH_OPEN", "-- PATCH_CLOSE"})

-- [[
-- local colorscheme = require("lua.lush_theme.luna")
-- local lushwright = require("shipwright.transform.lush")

-- run(colorscheme,
--  lushwright.to_vimscript,
--  {append, {"set background=dark", "let g:colors_name=\"luna\""}},
--  {overwrite, "colors/luna.vim"})
-- ]]
