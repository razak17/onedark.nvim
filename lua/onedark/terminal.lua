local P = require("onedark.palette")

local M = {}

function M.setup()
	vim.g.terminal_color_0 = P.bg
	vim.g.terminal_color_1 = P.red
	vim.g.terminal_color_2 = P.green
	vim.g.terminal_color_3 = P.yellow
	vim.g.terminal_color_4 = P.blue
	vim.g.terminal_color_5 = P.violet
	vim.g.terminal_color_6 = P.cyan
	vim.g.terminal_color_7 = P.fg_gray
	vim.g.terminal_color_8 = P.brown
	vim.g.terminal_color_9 = P.red
	vim.g.terminal_color_10 = P.green
	vim.g.terminal_color_11 = P.yellow
	vim.g.terminal_color_12 = P.term_blue
	vim.g.terminal_color_13 = P.violet
	vim.g.terminal_color_14 = P.cyan
	vim.g.terminal_color_15 = P.fg
end

return M
