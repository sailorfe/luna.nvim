local BSSM = {}

function BSSM.load()
	vim.cmd("hi clear")
	if vim.fn.exists("syntax_on") then
		vim.cmd("syntax reset")
	end
	vim.o.termguicolors = true
	vim.g.colors_name = "luna"

	require("lush")(require("luna.theme"))
end

return BSSM
