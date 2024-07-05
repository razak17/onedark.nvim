local config = vim.g.onedark_config
local P = require("onedark.palette")
local tint = require("onedark.utils").tint

local bg = tint(P.bg, -0.4)

local M = {}

M.fill = {
	NoiceMini = { bg = bg, fg = P.orange },
	NoicePopupBaseGroup = { bg = P.bg, fg = P.bg },
	NoicePopupWarnBaseGroup = { bg = P.bg, fg = P.bg },
	NoicePopupInfoBaseGroup = { bg = P.bg, fg = P.bg },
	NoiceCmdlinePopup = { bg = P.bg, fg = P.base7 },
	NoiceCmdlinePopupBorder = { bg = bg, fg = bg },
	NoiceCmdlinePopupTitle = { link = "FloatTitle" },
	NoiceCmdlinePopupBorderCmdline = { link = "NoicePopupBaseGroup" },
	NoiceCmdlinePopupBorderSearch = { link = "NoicePopupWarnBaseGroup" },
	NoiceCmdlinePopupBorderFilter = { link = "NoicePopupWarnBaseGroup" },
	NoiceCmdlinePopupBorderHelp = { link = "NoicePopupInfoBaseGroup" },
	NoiceCmdlinePopupBorderSubstitute = { link = "NoicePopupWarnBaseGroup" },
	NoiceCmdlinePopupBorderIncRename = { link = "NoicePopupWarnBaseGroup" },
	NoiceCmdlinePopupBorderInput = { link = "NoicePopupBaseGroup" },
	NoiceCmdlinePopupBorderLua = { link = "NoicePopupBaseGroup" },
	NoiceCmdlineIconCmdline = { fg = P.purple },
	NoiceCmdlineIconSearch = { fg = P.blue },
	NoiceCmdlineIconFilter = { fg = P.pink },
	NoiceCmdlineIconHelp = { fg = P.blue },
	NoiceCmdlineIconIncRename = { fg = P.blue },
	NoiceCmdlineIconSubstitute = { fg = P.blue },
	NoiceCmdlineIconInput = { fg = P.purple },
	NoiceCmdlineIconLua = { fg = P.blue },
	NoiceConfirm = { bg = P.bg, fg = P.bg_visual },
	NoiceConfirmBorder = { bg = P.bg, fg = P.bg },
	NoiceFormatConfirm = { bg = P.dark_grey, fg = P.fg },
	NoiceFormatConfirmDefault = { link = "Normal" },
	NoicePopupmenuSelected = { bg = P.dark_pink, fg = P.fg },
	NoiceFormatProgressDone = { link = "NoiceMini" },
	NoiceFormatProgressTodo = { link = "NoiceMini" },
	NoiceLspProgressClient = { fg = P.orange, bg = P.none },
	NoiceLspProgressSpinner = { fg = P.purple, bg = P.none },
	NoiceLspProgressTitle = { fg = P.comment, bg = P.none },
	NoiceFormatEvent = { fg = P.yellow },
}

M.outline = {
	NoiceMini = { bg = tint(P.bg, -0.4) },
	NoicePopupBaseGroup = { link = "PopupBorder" },
	NoicePopupWarnBaseGroup = { link = "PopupTraceBorder" },
	NoicePopupInfoBaseGroup = { link = "PopupInfoBorder" },
	NoiceCmdlinePopup = { fg = P.cursor },
	NoiceCmdlinePopupBorder = { link = "FloatBorder" },
	NoiceCmdlinePopupTitle = { link = "Normal" },
	NoiceCmdlinePopupBorderCmdline = { link = "NoicePopupBaseGroup" },
	NoiceCmdlinePopupBorderSearch = { link = "NoicePopupWarnBaseGroup" },
	NoiceCmdlinePopupBorderFilter = { link = "NoicePopupWarnBaseGroup" },
	NoiceCmdlinePopupBorderHelp = { link = "NoicePopupInfoBaseGroup" },
	NoiceCmdlinePopupBorderSubstitute = { link = "NoicePopupWarnBaseGroup" },
	NoiceCmdlinePopupBorderIncRename = { link = "NoicePopupWarnBaseGroup" },
	NoiceCmdlinePopupBorderInput = { link = "NoicePopupBaseGroup" },
	NoiceCmdlinePopupBorderLua = { link = "NoicePopupBaseGroup" },
	NoiceCmdlineIconCmdline = { fg = P.purple },
	NoiceCmdlineIconSearch = { fg = P.blue },
	NoiceCmdlineIconFilter = { fg = P.pink },
	NoiceCmdlineIconHelp = { fg = P.blue },
	NoiceCmdlineIconIncRename = { fg = P.blue },
	NoiceCmdlineIconSubstitute = { fg = P.blue },
	NoiceCmdlineIconInput = { fg = P.purple },
	NoiceCmdlineIconLua = { fg = P.blue },
	NoiceConfirm = { link = "Normal" },
	NoiceConfirmBorder = { link = "NoicePopupBaseGroup" },
	NoiceFormatConfirm = { bg = P.dark_grey, fg = P.fg },
	NoiceFormatConfirmDefault = { link = "Normal" },
	NoicePopupmenuSelected = { bg = P.dark_pink, fg = P.fg },
	NoiceFormatProgressDone = { link = "NoiceMini" },
	NoiceFormatProgressTodo = { link = "NoiceMini" },
	NoiceLspProgressClient = { fg = P.orange },
	NoiceLspProgressSpinner = { fg = P.purple },
	NoiceLspProgressTitle = { fg = P.comment },
	NoiceFormatEvent = { fg = P.yellow },
}

if config.variant == "outline" then
	return M.outline
else
	return M.fill
end
