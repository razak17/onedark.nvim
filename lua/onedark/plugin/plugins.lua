local P = require("onedark.palette")
local tint = require("onedark.utils").tint

return {
	------------------------------------------------------------------------------
	-- Plugins
	------------------------------------------------------------------------------

	-- lazy
	lazyH1 = { link = "Visual" },
	LazyButton = { link = "Folded" },
	LazyButtonActive = { link = "Visual" },

-- mason
	MasonHeader = { link = "FloatTitle" },
	MasonMutedBlock = { link = "Folded" },
	MasonHighlightBlockBold = { link = "Visual" },

	-- virtcolumn
	VirtColumn = { link = "FloatBorder" },

	-- winbar
	Winbar = { fg = P.light_gray },
	WinbarNC = { fg = tint(P.light_gray, -0.3) },
	WinbarCrumb = { link = "Winbar" },
	WinbarDirectory = { fg = P.cyan },

	-- highlight FIXME comments
	commentTSWarning = { bg = P.teal, fg = P.base0, bold = true },
	commentTSDanger = { bg = P.dark_green, fg = P.base0, bold = true },
	commentTSNote = { bg = P.blue, fg = P.base0, bold = true },
	CommentTasksTodo = { link = "commentTSWarning" },
	CommentTasksFixme = { link = "commentTSDanger" },
	CommentTasksNote = { link = "commentTSNote" },

	-- gitsigns
	GitSignsAdd = { fg = P.sign_add },
	GitSignsChange = { fg = P.sign_change },
	GitSignsDelete = { fg = P.sign_delete },
	GitSignsStagedAdd = { fg = tint(P.sign_add, -0.5) },
	GitSignsStagedChange = { fg = tint(P.sign_change, -0.5) },
	GitSignsStagedDelete = { fg = tint(P.sign_delete, -0.5) },
	GitSignsAddNr = { link = "GitSignsAdd" },
	GitSignsChangeNr = { link = "GitSignsAdd" },
	GitSignsDeleteNr = { link = "GitSignsDelete" },
	GitSignsAddLn = { bg = P.dark_grey },
	GitSignsChangeLn = { bg = P.bg_highlight },
	GitSignsDeleteLn = { bg = P.yellow },
	GitSignsChangeDelete = { link = "GitSignsDelete" },

	-- diffview
	DiffAddedChar = { link = "DiffAdd" },
	DiffChangedChar = { link = "DiffChange" },
	DiffviewDiffAddAsDelete = { link = "DiffDelete" },
	DiffviewDiffText = { link = "DiffText" },
	DiffviewStatusAdded = { link = "GitSignsAdd" },
	DiffviewStatusModified = { link = "GitSignsChange" },
	DiffviewStatusDeleted = { link = "GitSignsDelete" },
	DiffviewStatusRenamed = { fg = P.chartreuse },
	DiffviewStatusUnmerged = { fg = P.yellowgreen },
	DiffviewStatusUntracked = { fg = P.ansi_green },
	DiffviewFilePanelInsertions = { fg = tint(P.sign_add, 0.5) },
	DiffviewFilePanelDeletions = { link = "DiffviewStatusDeleted" },
	DiffviewFilePanelPath = { link = "Directory" },

	-- neogit
	NeogitDiffAdd = { link = "DiffAdd" },
	NeogitDiffDelete = { link = "DiffDelete" },
  NeogitFold = { fg = "#89ddff" } ,

	-- trouble
	TroubleCount = { bg = P.bg_alt, fg = P.pink },
	TroubleFile = { fg = P.blue, bold = true },
	TroubleTextError = { fg = P.red },
	TroubleTextWarning = { fg = P.yellow },
	TroubleTextInformation = { fg = P.blue },
	TroubleTextHint = { fg = P.teal },

	-- neo-tree
	NeoTreeGitAdded = { fg = P.sign_add },
	NeoTreeGitConflict = { fg = P.sign_delete },
	NeoTreeGitDeleted = { fg = P.sign_delete },
	NeoTreeGitIgnored = { fg = P.comment },
	NeoTreeGitModified = { fg = P.sign_change },
	NeoTreeGitUntracked = { fg = P.sign_add },
	NeoTreeHiddenByName = { fg = P.comment },
	NeoTreeTitleBar = { link = "FloatTitle" },
	NeoTreeIndentMarker = { link = "Dim" },
	NeoTreeExpander = { link = "NeoTreeIndentMarker" },
	NeoTreeFileNameOpened = { fg = P.bg_visual, bold = true },
	NeoTreeTabActive = { link = "FloatTitle" },
	NeoTreeTabInactive = { link = "Comment", italic = false },
	NeoTreeTabSeparatorInactive = { link = "WinSeparator" },

	-- dashboard
	DashboardShortCut = { fg = P.darker_blue },
	DashboardHeader = { fg = P.blue },
	DashboardCenter = { fg = P.blue },
	DashboardFooter = { fg = P.dark_cyan },

	-- which-key
	WhichKey = { fg = P.pink },
	WhichKeySeparator = { fg = tint(P.cyan, -0.2) },
	WhichKeyFloat = { link = "NormalFloat" },
	WhichKeyGroup = { fg = P.pale_blue },
	WhichKeyDesc = { fg = P.dark_cyan },

	-- clear-action.nvim
	CodeActionIcon = { fg = P.brighter_blue },

	-- null-ls
	NullLsInfoBorder = { link = "FloatBorder" },

	-- nvim-lspconfig
	LspInfoBorder = { link = "FloatBorder" },

	-- indent-blankline
	IndentBlanklineChar = { fg = tint(P.bg_alt, -0.2), nocombine = true },
	IndentBlanklineContextChar = { fg = tint(P.purple, -0.5), nocombine = true },

	-- DAP
	DapBreakpoint = { link = "DiagnosticError" },
	DapBreakpointRejected = { link = "DiagnosticWarn" },
	DapStopped = { link = "DiagnosticHint" },
	DapUIFloatNormal = { link = "NormalFloat" },
	DapUIFloatBorder = { link = "FloatBorder" },

	-- vim-illuminate
	IlluminatedWordText = { bg = P.base4, underline = false },
	IlluminatedWordRead = { bg = P.base4, underline = false },
	IlluminatedWordWrite = { bg = P.base4, underline = false },

	-- md-headers
	MarkdownHeadersTitle = { fg = P.light_gray },
	MarkdownHeadersBorder = { link = "FloatBorder" },

	-- headlines
	Headline = { bg = tint(P.bg, -0.6), bold = true, italic = true },
	CodeBlock = { bg = tint(P.bg_highlight, -0.20), bold = true, italic = true },
	Headline1 = { bg = "#295715", fg = P.bg_visual },
	Headline2 = { bg = "#8d8200", fg = P.bg_visual },
	Headline3 = { bg = "#a56106", fg = P.bg_visual },
	Headline4 = { bg = "#7e0000", fg = P.bg_visual },
	Headline5 = { bg = "#1e0b7b", fg = P.bg_visual },
	Headline6 = { bg = "#560b7b", fg = P.bg_visual },
	Dash = { fg = P.bg_visual, bold = true },

	-- buffer-tabs
	BufferTabs = { fg = tint(P.purple, -0.2) },

	-- cmp
	CmpItemKindCopilot = { fg = P.forest_green },

	-- nvim-bqf
	BqfPreviewFloat = { link = "NormalFloat" },
	BqfPreviewTitle = { link = "FloatTitle" },
	BqfPreviewBorder = { link = "FloatBorder" },
	BqfSign = { fg = P.red },
	BqfPreviewRange = { fg = P.cyan },
	BqfPreviewCursor = { fg = P.yellowgreen },

	-- buffalo
	BuffaloWindow = { link = "NormalFloat" },
	BuffaloBorder = { link = "FloatBorder" },
	BuffaloTitle = { link = "FloatTitle" },

	-- harpoon
	HarpoonWindow = { link = "NormalFloat" },
	HarpoonBorder = { link = "FloatBorder" },
	HarpoonTitle = { link = "FloatTitle" },

	-- buffer-manager
	BufferManagerTitle = { link = "FloatTitle" },
	BufferManagerBorder = { link = "FloatBorder" },
	-- mini.icons
	MiniIconsGrey = { link = "Comment" },

	-- nvim-web-devicons
	DevIconDefault = { link = "Comment" },
}
