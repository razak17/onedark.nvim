local P = require("onedark.palette")
local tint = require("onedark.utils").tint

local bg = tint(P.bg, 0.1)

local M = {}

M.fill = {
	NoiceMini = { bg = bg, fg = bg },
	NoicePopupBaseGroup = { bg = bg, fg = bg },
	NoicePopupWarnBaseGroup = { bg = bg, fg = bg },
	NoicePopupInfoBaseGroup = { bg = bg, fg = bg },
	NoiceCmdlinePopup = { bg = bg, fg = P.cursor },
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
	NoiceCmdlineIconFilter = { fg = P.blue },
	NoiceCmdlineIconHelp = { fg = P.pink },
	NoiceCmdlineIconIncRename = { fg = P.blue },
	NoiceCmdlineIconSubstitute = { fg = P.blue },
	NoiceCmdlineIconInput = { fg = P.purple },
	NoiceCmdlineIconLua = { fg = P.blue },
	NoiceConfirm = { link = "NormalFloat" },
	NoiceConfirmBorder = { link = "NoicePopupBaseGroup" },
}

M.outline = {
	NoiceMini = { link = "Normal" },
	NoicePopupBaseGroup = { link = "CursorLineNr" },
	NoicePopupWarnBaseGroup = { link = "Directory" },
	NoicePopupInfoBaseGroup = { link = "Conditional" },
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
	NoiceCmdlineIconCmdline = { link = "NoicePopupBaseGroup" },
	NoiceCmdlineIconSearch = { link = "NoicePopupWarnBaseGroup" },
	NoiceCmdlineIconFilter = { link = "NoicePopupWarnBaseGroup" },
	NoiceCmdlineIconHelp = { link = "NoicePopupInfoBaseGroup" },
	NoiceCmdlineIconIncRename = { link = "NoicePopupWarnBaseGroup" },
	NoiceCmdlineIconSubstitute = { link = "NoicePopupWarnBaseGroup" },
	NoiceCmdlineIconInput = { link = "NoicePopupBaseGroup" },
	NoiceCmdlineIconLua = { link = "NoicePopupBaseGroup" },
	NoiceConfirm = { link = "NormalFloat" },
	NoiceConfirmBorder = { link = "NoicePopupBaseGroup" },
}

return M
