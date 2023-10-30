local P = require("onedark.palette")
local tint = require("onedark.utils").tint

local M = {}

M.fill = {
	FzfLuaNormal = { link = "TelescopePromptNormal" },
	FzfLuaBorder = { link = "TelescopePromptBorder" },
	FzfLuaTitle = { link = "FloatTitle" },
	FzfLuaPreviewNormal = { link = "TelescopePreviewNormal" },
	FzfLuaPreviewBorder = { link = "TelescopePreviewBorder" },
	FzfLuaPreviewTitle = { link = "FloatTitle" },
	FzfLuaCursor = { link = "Cursor" },
	FzfLuaCursorLine = { link = "TelescopeSelection" },
	FzfLuaCursorLineNr = { link = "CursorLineNr" },
	FzfLuaSearch = { link = "FloatTitle" },
	-- FzfLuaScrollBorderEmpty = { link = 'FloatTitle' },
	-- FzfLuaScrollBorderFull = { link = 'FloatTitle' },
	-- FzfLuaScrollFloatEmpty = { link = 'FloatTitle' },
	-- FzfLuaScrollFloatFull = { link = 'FloatTitle' },
	-- FzfLuaHelpNormal = { link = 'TelescopeNormal' },
	-- FzfLuaHelpBorder = { link = 'TelescopeBorder' },
	-- FzfLuaHeaderBind = { link = 'FloatTitle' },
	FzfLuaHeaderText = { link = "CursorLineNr" },
	-- FzfLuaBufName = { link = 'Exception' },
	-- FzfLuaBufNr = { link = 'LineNr' },
	-- FzfLuaBufLineNr = { link = 'LineNr' },
	-- FzfLuaBufFlagCur = { link = 'Exception' },
	-- FzfLuaBufFlagAlt = { link = 'Exception' },
	FzfLuaTabTitle = { link = "FloatTitle" },
	FzfLuaTabMarker = { link = "FloatTitle" },
}

M.outline = {
	FzfLuaTitle = { link = "FloatTitle" },
}

return M
