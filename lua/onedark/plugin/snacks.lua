local P = require("onedark.palette")
local tint = require("onedark.utils").tint

return {
	SnacksNotifierHistory = { link = "NormalFloat" },
	SnacksNotifierHistoryTitle = { link = "FloatTitle" },
	SnacksNotifierHistoryDateTime = { link = "Debug" },

	SnacksNotifierInfo = { link = "PopupNormal" },
	SnacksNotifierDebug = { link = "PopupNormal" },
	SnacksNotifierTrace = { link = "PopupNormal" },
	SnacksNotifierError = { link = "PopupNormal" },
	SnacksNotifierWarn = { link = "PopupNormal" },

	SnacksNotifierFooterInfo = { link = "PopupNormal" },
	SnacksNotifierFooterDebug = { link = "PopupNormal" },
	SnacksNotifierFooterTrace = { link = "PopupNormal" },
	SnacksNotifierFooterError = { link = "PopupNormal" },
	SnacksNotifierFooterWarn = { link = "PopupNormal" },

	SnacksNotifierTitleError = { link = "DiagnosticError" },
	SnacksNotifierTitleWarn = { link = "DiagnosticWarn" },
	SnacksNotifierTitleInfo = { link = "DiagnosticInfo" },
	SnacksNotifierTitleDebug = { link = "DiagnosticHint" },
	SnacksNotifierTitleTrace = { link = "DiagnosticHint" },

	SnacksNotifierIconError = { link = "DiagnosticError" },
	SnacksNotifierIconWarn = { link = "DiagnosticWarn" },
	SnacksNotifierIconInfo = { link = "DiagnosticInfo" },
	SnacksNotifierIconDebug = { link = "DiagnosticHint" },
	SnacksNotifierIconTrace = { link = "DiagnosticHint" },

	SnacksNotifierBorderError = { link = "PopupErrorBorder" },
	SnacksNotifierBorderWarn = { link = "PopupWarnBorder" },
	SnacksNotifierBorderInfo = { link = "PopupInfoBorder" },
	SnacksNotifierBorderDebug = { link = "PopupDebugBorder" },
	SnacksNotifierBorderTrace = { link = "PopupTraceBorder" },

	SnacksInputNormal = { link = "PickerPromptNormal" },
	SnacksInputBorder = { link = "PickerPromptBorder" },
	SnacksInputTitle = { link = "PickerPromptTitle" },
	SnacksPickerToggle = { link = "PickerToggle" },

	-- SnacksIndent = { link = "IndentBlanklineChar" },
	-- SnacksIndentBlank = { link = "SnacksIndent" },
	-- SnacksIndentChunk = { link = "IndentBlanklineContextChar" },
	-- SnacksIndentScope = { link = "SnacksIndentChunk" },
}
