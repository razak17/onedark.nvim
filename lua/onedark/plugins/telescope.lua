local P = require("onedark.palette")
local tint = require("onedark.utils").tint

local M = {}

M.fill = {
	TelescopeNormal = { bg = tint(P.bg, 0.6) },
	TelescopeBorder = { link = "FloatBorder" },
	TelescopeMatching = { link = "Directory" },
	TelescopeMultiSelection = { link = "CursorLineNr" },
	TelescopePromptNormal = { fg = P.fg, bg = tint(P.bg, 0.4) },
	TelescopePromptBorder = { bg = tint(P.bg, 0.4), fg = tint(P.bg, 0.4) },
	TelescopePromptCounter = { link = "CursorLineNr" },
	TelescopePromptTitle = { link = "FloatTitle" },
	TelescopePromptPrefix = { link = "CursorLineNr" },
	TelescopeSelection = { bg = tint(P.bg, 0.4) },
	TelescopeSelectionCaret = { link = "Exception" },
	TelescopeResultsTitle = { link = "FloatTitle" },
	TelescopeResultsNormal = { bg = tint(P.bg, 0.1) },
	TelescopeResultsBorder = { bg = tint(P.bg, 0.1), fg = tint(P.bg, 0.1) },
	TelescopePreviewNormal = { bg = tint(P.bg, -0.1), fg = P.fg },
	TelescopePreviewTitle = { link = "FloatTitle" },
	TelescopePreviewBorder = { bg = tint(P.bg, -0.1), fg = tint(P.bg, -0.1) },
}

M.outline = {
	TelescopeNormal = { fg = P.fg },
	TelescopeBorder = { link = "FloatBorder" },
	TelescopeMatching = { link = "Directory" },
	TelescopeMultiSelection = { link = "CursorLineNr" },
	TelescopePromptNormal = { fg = P.fg },
	TelescopePromptBorder = { link = "FloatBorder" },
	TelescopePromptCounter = { link = "CursorLineNr" },
	TelescopePromptTitle = { link = "FloatTitle" },
	TelescopePromptPrefix = { link = "CursorLineNr" },
	TelescopeSelection = { link = "CursorLine" },
	TelescopeSelectionCaret = { link = "Exception" },
	TelescopeResultsNormal = { fg = P.fg },
	TelescopeResultsTitle = { link = "FloatTitle" },
	TelescopeResultsBorder = { link = "FloatBorder" },
	TelescopePreviewTitle = { link = "FloatTitle" },
	TelescopePreviewBorder = { link = "VertSplit" },
}

return M
