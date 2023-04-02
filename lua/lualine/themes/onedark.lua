local P = require("onedark.palette")
local tint = require("onedark.utils").tint

local bg = tint(P.bg_dark, -0.2)
local fg = P.base8

return {
	normal = {
		a = { fg = fg, bg = bg },
		b = { fg = fg, bg = bg },
		c = { fg = fg, bg = bg },
	},
	insert = { a = { fg = bg, bg = P.green, gui = "bold" } },
	visual = { a = { fg = bg, bg = P.purple, gui = "bold" } },
	command = { a = { fg = bg, bg = P.yellow, gui = "bold" } },
	replace = { a = { fg = bg, bg = P.red, gui = "bold" } },
	inactive = {
		a = { fg = fg, bg = bg, gui = "bold" },
		b = { fg = fg, bg = bg },
		c = { fg = fg, bg = bg },
	},
}
