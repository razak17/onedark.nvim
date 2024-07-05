local P = require("onedark.palette")
local tint = require("onedark.utils").tint

return {
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
