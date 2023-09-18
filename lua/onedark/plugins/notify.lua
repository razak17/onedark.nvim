local P = require("onedark.palette")
local tint = require("onedark.utils").tint

local M = {}

local body = { bg = tint(P.bg, -0.1), fg = P.fg }
local border = { bg = tint(P.bg, -0.1), fg = tint(P.bg, -0.1) }

M.fill = {
	NotifyBackground = { link = "NormalFloat" },
	NotifyERRORTitle = { link = "DiagnosticError" },
	NotifyWARNTitle = { link = "DiagnosticWarn" },
	NotifyINFOTitle = { link = "DiagnosticInfo" },
	NotifyDEBUGTitle = { link = "DiagnosticHint" },
	NotifyTRACETitle = { link = "DiagnosticHint" },
	NotifyERRORBody = body,
	NotifyWARNBody = body,
	NotifyINFOBody = body,
	NotifyDEBUGBody = body,
	NotifyTRACEBody = body,
	NotifyERRORBorder = border,
	NotifyWARNBorder = border,
	NotifyINFOBorder = border,
	NotifyDEBUGBorder = border,
	NotifyTRACEBorder = border,
	NotifyERRORIcon = { link = "DiagnosticError" },
	NotifyWARNIcon = { link = "DiagnosticWarn" },
	NotifyINFOIcon = { link = "DiagnosticInfo" },
	NotifyDEBUGIcon = { link = "DiagnosticHint" },
	NotifyTRACEIcon = { link = "DiagnosticHint" },
}

M.outline = {
	NotifyBackground = { link = "NormalFloat" },
	NotifyERRORTitle = { link = "DiagnosticError" },
	NotifyWARNTitle = { link = "DiagnosticWarn" },
	NotifyINFOTitle = { link = "DiagnosticInfo" },
	NotifyDEBUGTitle = { link = "DiagnosticHint" },
	NotifyTRACETitle = { link = "DiagnosticHint" },
	NotifyERRORBody = { link = "NormalFloat" },
	NotifyWARNBody = { link = "NormalFloat" },
	NotifyINFOBody = { link = "NormalFloat" },
	NotifyDEBUGBody = { link = "NormalFloat" },
	NotifyTRACEBody = { link = "NormalFloat" },
	NotifyERRORBorder = { fg = P.error_red },
	NotifyWARNBorder = { fg = P.dark_orange },
	NotifyINFOBorder = { fg = P.blue },
	NotifyDEBUGBorder = { fg = P.purple_test },
	NotifyTRACEBorder = { fg = P.pink },
	NotifyERRORIcon = { link = "DiagnosticError" },
	NotifyWARNIcon = { link = "DiagnosticWarn" },
	NotifyINFOIcon = { link = "DiagnosticInfo" },
	NotifyDEBUGIcon = { link = "DiagnosticHint" },
	NotifyTRACEIcon = { link = "DiagnosticHint" },
}

return M
