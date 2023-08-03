local theme = require("onedark.theme")
local P = require("onedark.palette")

local function terminal_color()
	vim.g.terminal_color_0 = P.bg
	vim.g.terminal_color_1 = P.red
	vim.g.terminal_color_2 = P.green
	vim.g.terminal_color_3 = P.yellow
	vim.g.terminal_color_4 = P.blue
	vim.g.terminal_color_5 = P.violet
	vim.g.terminal_color_6 = P.cyan
	vim.g.terminal_color_7 = P.bg_term
	vim.g.terminal_color_8 = P.brown
	vim.g.terminal_color_9 = P.red
	vim.g.terminal_color_10 = P.green
	vim.g.terminal_color_11 = P.yellow
	vim.g.terminal_color_12 = P.term_blue
	vim.g.terminal_color_13 = P.violet
	vim.g.terminal_color_14 = P.cyan
	vim.g.terminal_color_15 = P.fg
end

local set_hl = function(tbl)
	for group, conf in pairs(tbl) do
		vim.api.nvim_set_hl(0, group, conf)
	end
end

local function colorscheme()
	vim.api.nvim_command("hi clear")
	vim.o.background = "dark"
	if vim.fn.exists("syntax_on") then
		vim.cmd("syntax reset")
	end
	vim.o.termguicolors = true
	vim.g.colors_name = "onedark"
	set_hl(theme.syntax)
	set_hl(theme.plugin_syntax)
	terminal_color()
end

colorscheme()
