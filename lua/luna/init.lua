-- init.lua
local BSSM = {}
BSSM.name = "luna"
function BSSM.inthenameofthemoon()
	vim.cmd("hi clear")
	vim.o.termguicolors = true
	vim.g.colors_name = BSSM.name
	vim.o.background = "dark"

	local theme = require("luna.theme")
	local highlights = theme.build()
	for group, attrs in pairs(highlights) do
		vim.api.nvim_set_hl(0, group, attrs)
	end

	local palette = require("luna.miau").get()
	vim.g.terminal_color_0 = palette.base
	vim.g.terminal_color_8 = palette.overlay
	vim.g.terminal_color_1 = palette.rei
	vim.g.terminal_color_9 = palette.hino
	vim.g.terminal_color_2 = palette.makoto
	vim.g.terminal_color_10 = palette.kino
	vim.g.terminal_color_3 = palette.minako
	vim.g.terminal_color_11 = palette.aino
	vim.g.terminal_color_4 = palette.ami
	vim.g.terminal_color_12 = palette.mizuno
	vim.g.terminal_color_5 = palette.hotaru
	vim.g.terminal_color_13 = palette.tomoe
	vim.g.terminal_color_6 = palette.usagi
	vim.g.terminal_color_14 = palette.tsukino
end
return BSSM
