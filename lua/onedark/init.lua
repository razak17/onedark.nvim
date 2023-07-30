local theme = require("onedark.theme")
local P = require("onedark.palette")

local async_load_plugin

local function terminal_color()
	vim.g.terminal_color_0 = P.bg
	vim.g.terminal_color_1 = P.red
	vim.g.terminal_color_2 = P.green
	vim.g.terminal_color_3 = P.yellow
	vim.g.terminal_color_4 = P.blue
	vim.g.terminal_color_5 = P.violet
	vim.g.terminal_color_6 = P.cyan
	vim.g.terminal_color_7 = P.bg1
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

async_load_plugin = vim.loop.new_async(vim.schedule_wrap(function()
	terminal_color()
	set_hl(theme.Plugin_syntax)
	if async_load_plugin then
		async_load_plugin:close()
	end
end))

local function colorscheme()
	vim.api.nvim_command("hi clear")
	if vim.fn.exists("syntax_on") then
		vim.cmd("syntax reset")
	end
	vim.o.background = "dark"
	vim.o.termguicolors = true
	vim.g.colors_name = "onedark"
	set_hl(theme.syntax)
	if async_load_plugin then
		async_load_plugin:send()
	end
end

colorscheme()
