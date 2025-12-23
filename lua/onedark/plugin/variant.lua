local config = vim.g.onedark_config
local P = require("onedark.palette")
local tint = require("onedark.utils").tint

local M = {}

M.fill = {
	NormalFloat = { bg = tint(P.bg, -0.1), fg = P.fg },
	FloatBorder = { bg = tint(P.bg, -0.1), fg = tint(P.bg, -0.1) },

	-- popup
	PopupNormal = { bg = tint(P.bg, -0.2), fg = P.fg },
	PopupBorder = { bg = tint(P.bg, -0.2), fg = tint(P.bg, -0.2) },
	PopupErrorBorder = { link = "PopupBorder" },
	PopupWarnBorder = { link = "PopupBorder" },
	PopupInfoBorder = { link = "PopupBorder" },
	PopupDebugBorder = { link = "PopupBorder" },
	PopupTraceBorder = { link = "PopupBorder" },

	-- picker
	PickerBorder = { bg = P.bg, fg = P.bg },
	PickerSelection = { link = "CursorLine" },

	PickerPromptNormal = { fg = P.fg, bg = P.bg },
	PickerPromptBorder = { link = "PickerBorder" },
	PickerPromptTitle = { link = "FloatTitle" },

	PickerResultsNormal = { bg = tint(P.bg, -0.1) },
	PickerResultsBorder = { bg = tint(P.bg, -0.1), fg = tint(P.bg, -0.1) },
	PickerResultsTitle = { link = "FloatTitle" },

	PickerPreviewNormal = { bg = tint(P.bg, -0.2), fg = P.fg },
	PickerPreviewBorder = { bg = tint(P.bg, -0.2), fg = tint(P.bg, -0.2) },
	PickerPreviewTitle = { link = "FloatTitle" },
	PickerToggle = { bg = tint(P.purple, -0.6), fg = P.blue, italic = true },
}

M.outline = {
	NormalFloat = { link = "Normal" },
	FloatBorder = { link = "WinSeparator" },

	-- popup
	PopupNormal = { link = "NormalFloat" },
	PopupBorder = { link = "FloatBorder" },
	PopupErrorBorder = { fg = tint(P.error_red, -0.6) },
	PopupWarnBorder = { fg = tint(P.dark_orange, -0.6) },
	PopupInfoBorder = { fg = tint(P.blue, -0.6) },
	PopupDebugBorder = { fg = tint(P.purple_test, -0.6) },
	PopupTraceBorder = { fg = tint(P.pink, -0.6) },

	-- picker
	PickerBorder = { link = "FloatBorder" },
	PickerSelection = { link = "CursorLine" },

	PickerPromptNormal = { link = "NormalFloat" },
	PickerPromptBorder = { link = "FloatBorder" },
	PickerPromptTitle = { link = "FloatTitle" },

	PickerResultsNormal = { link = "NormalFloat" },
	PickerResultsBorder = { link = "FloatBorder" },
	PickerResultsTitle = { link = "FloatTitle" },

	PickerPreviewNormal = { link = "NormalFloat" },
	PickerPreviewBorder = { link = "FloatBorder" },
	PickerPreviewTitle = { link = "FloatTitle" },
}

if config.variant == "outline" then
	return M.outline
else
	return M.fill
end
