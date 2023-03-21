local P = require("onedark.palette")

local async_load_plugin

local set_hl = function(tbl)
	for group, conf in pairs(tbl) do
		vim.api.nvim_set_hl(0, group, conf)
	end
end

function P.colorscheme()
	local theme = require("onedark.theme")

	vim.api.nvim_command("hi clear")
	if vim.fn.exists("syntax_on") then
		vim.cmd("syntax reset")
	end
	vim.o.background = "dark"
	vim.o.termguicolors = true
	vim.g.colors_name = "onedark"
	set_hl(theme)
	if async_load_plugin then
		async_load_plugin:send()
	end
end

P.colorscheme()

return P
