local P = require("onedark.palette")
local tint = require("onedark.utils").tint

return {
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
	PickerSelection = { bg = tint(P.bg, 0.4) },

	PickerPromptNormal = { fg = P.fg, bg = P.bg },
	PickerPromptBorder = { link = "PickerBorder" },
	PickerPromptTitle = { link = "FloatTitle" },

	PickerResultsNormal = { bg = tint(P.bg, -0.1) },
	PickerResultsBorder = { bg = tint(P.bg, -0.1), fg = tint(P.bg, -0.1) },
	PickerResultsTitle = { link = "FloatTitle" },

	PickerPreviewNormal = { bg = tint(P.bg, -0.2), fg = P.fg },
	PickerPreviewBorder = { bg = tint(P.bg, -0.2), fg = tint(P.bg, -0.2) },
	PickerPreviewTitle = { link = "FloatTitle" },
}
