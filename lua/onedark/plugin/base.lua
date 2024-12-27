local P = require("onedark.palette")
local tint = require("onedark.utils").tint

return {
	------------------------------------------------------------------------------
	-- Editor
	------------------------------------------------------------------------------
	Normal = { fg = P.fg, bg = tint(P.bg, -0.3) },
	Terminal = { fg = P.fg, bg = P.bg },
	SignColumn = { link = "Normal" },
	CursorColumn = { link = "Normal" },
	FoldColumn = { fg = P.base5, bg = tint(P.bg, -0.3) },
	VertSplit = { fg = tint(P.purple, -0.6) },
	Folded = { bg = tint(P.bg_highlight, -0.1) },
	EndOfBuffer = { fg = P.bg, bg = P.none },
	Visual = { bg = tint(P.blue, -0.6) },
	VisualNOS = { link = "Visual" },
	Search = { link = "Visual" },
	CurSearch = { link = "Search" },
	IncSearch = { link = "Search" },
	CursorLine = { bg = tint(P.blue, -0.6), underline = false },
	ColorColumn = { link = "Folded" },
	Conceal = { fg = P.grey, bg = P.none },
	Cursor = { fg = P.none, bg = P.cusor, reverse = true },
	vCursor = { fg = P.none, bg = P.none, reverse = true },
	iCursor = { fg = P.none, bg = P.none, reverse = true },
	lCursor = { fg = P.none, bg = P.none, reverse = true },
	CursorIM = { fg = P.none, bg = P.none, reverse = true },
	LineNr = { fg = tint(P.purple, -0.5) },
	qfLineNr = { fg = P.cyan },
	CursorLineNr = { fg = tint(P.blue, -0.3), bold = true },
	diffAdded = { bg = P.diff_add },
	DiffAdd = { link = "diffAdded" },
	DiffChange = { bg = P.diff_change },
	diffRemoved = { bg = P.diff_delete },
	DiffDelete = { link = "diffRemoved" },
	DiffDeleteAlt = { bg = P.diff_delete_alt },
	DiffText = { bg = P.diff_text },
	Directory = { fg = P.blue, bg = P.none },
	ErrorMsg = { fg = P.pale_red, bg = P.none, bold = true },
	WarningMsg = { fg = P.dark_orange, bg = P.none, bold = true },
	ModeMsg = { fg = P.fg, bg = P.none, bold = true },
	MatchParen = { bg = tint(P.visual, -0.4) },
	MatchWord = { fg = P.none, bg = P.none, underline = true },
	NonText = { link = "Comment" },
	Dim = { fg = P.base5 },
	Whitespace = { fg = P.base4 },
	SpecialKey = { fg = P.bg },
	Pmenu = { fg = P.fg, bg = P.bg },
	PmenuSel = { link = "CursorLine" },
	PmenuSelBold = { fg = P.base0, bg = P.blue },
	PmenuSbar = { fg = P.none, bg = P.dark_grey },
	PmenuThumb = { bg = tint(P.dark_grey, 0.4) },
	WildMenu = { fg = P.bg_visual, bg = tint(P.purple, -0.7) },
	StatusLine = { fg = P.base8, bg = tint(P.bg_dark, -0.1) },
	StatusLineNC = { fg = P.grey, bg = tint(P.bg_dark, -0.1) },
	Question = { fg = P.yellow },
	Tabline = { fg = P.base6, bg = P.base2 },
	TabLineSel = { bg = P.bg_alt },
	SpellBad = { fg = P.none, bg = P.none, undercurl = true, sp = "green" },
	SpellCap = { fg = P.none, bg = P.none, undercurl = true },
	SpellLocal = { fg = P.none, bg = P.none, undercurl = true },
	SpellRare = { fg = P.none, bg = P.none, undercurl = true },
	QuickFixLine = { fg = P.black },
	Debug = { fg = P.orange },
	------------------------------------------------------------------------------
	-- Extra (Editor)
	------------------------------------------------------------------------------
	NormalNC = { fg = P.fg, bg = P.none },
	MsgArea = { link = "Normal" },
	MsgSeparator = { fg = P.base7, bg = P.bg },
	qfFileName = { fg = P.yellowgreen },
	netrwDir = { fg = P.pink },
	TabLineFill = { bg = P.bg },
	WinSeparator = { link = "VertSplit" },
	URL = { fg = P.brighter_blue, underline = true },
	FloatTitle = { link = "WildMenu" },
	------------------------------------------------------------------------------
	-- Lang
	------------------------------------------------------------------------------
	Boolean = { fg = P.orange },
	Number = { fg = P.brown },
	Float = { fg = P.brown },
	PreProc = { fg = P.blue },
	PreCondit = { fg = P.blue },
	Include = { fg = P.pink },
	Define = { fg = P.violet },
	Conditional = { fg = P.pink },
	Repeat = { fg = P.pink },
	Keyword = { fg = P.pink },
	Typedef = { fg = P.pale_red },
	Exception = { fg = P.pale_red },
	Statement = { fg = P.pale_red },
	Error = { fg = P.red },
	StorageClass = { fg = P.orange },
	Tag = { fg = P.pale_red },
	Label = { fg = P.blue },
	Structure = { fg = P.orange },
	Operator = { fg = P.light_gray },
	Title = { fg = P.orange, bold = true },
	Special = { fg = P.pink },
	SpecialChar = { fg = P.yellow },
	Type = { fg = P.pale_red },
	Function = { fg = P.blue },
	String = { fg = P.light_green },
	Character = { fg = P.green },
	Constant = { fg = P.cyan },
	Macro = { fg = P.cyan },
	Identifier = { fg = P.blue },
	Comment = { fg = P.comment },
	SpecialComment = { fg = P.comment },
	Todo = { fg = P.orange, italic = true },
	Delimiter = { fg = P.orange },
	Ignore = { fg = P.grey },
	Underlined = { fg = P.none, underline = true },
	Variable = { fg = tint(P.pale_red, -0.07) },
	Property = { fg = P.light_turquoise },
	Field = { fg = P.pale_red },
	Method = { fg = P.green },
	Class = { fg = P.blue },
	JsonFold = { fg = P.comment },
	------------------------------------------------------------------------------
	-- Treesitter
	------------------------------------------------------------------------------
	["@field"] = { link = "Field" },
	["@comment"] = { link = "Comment" },
	["@variable"] = { link = "Variable" },
	["@string"] = { link = "String" },
	["@string.regexp"] = { link = "String" },
	["@string.escape"] = { link = "String" },
	["@character"] = { link = "String" },
	["@character.special"] = { link = "SpecialChar" },
	["@number"] = { link = "Number" },
	["@number.float"] = { link = "Float" },
	["@boolean"] = { link = "Boolean" },
	["@constant"] = { link = "Constant" },
	["@constant.builtin"] = { link = "Constant" },
	["@constructor"] = { link = "Type" },
	["@type"] = { link = "Type" },
	["@include"] = { link = "Include" },
	["@exception"] = { link = "Exception" },
	["@keyword"] = { link = "Keyword" },
	["@keyword.return"] = { link = "Keyword" },
	["@keyword.operator"] = { link = "Keyword" },
	["@keyword.function"] = { link = "Keyword" },
	["@function"] = { link = "Function" },
	["@function.builtin"] = { link = "Function" },
	["@method"] = { link = "Function" },
	["@function.macro"] = { link = "Function" },
	["@conditional"] = { link = "Conditional" },
	["@repeat"] = { link = "Repeat" },
	["@operator"] = { link = "Operator" },
	["@preproc"] = { link = "PreProc" },
	["@storageclass"] = { link = "StorageClass" },
	["@structure"] = { link = "Structure" },
	["@type.definition"] = { link = "Typedef" },
	["@define"] = { link = "Define" },
	["@note"] = { link = "Comment" },
	["@none"] = { fg = P.light_gray, bg = P.none },
	["@todo"] = { link = "Todo" },
	["@debug"] = { link = "Debug" },
	["@danger"] = { link = "Error" },
	["@title"] = { link = "Title" },
	["@label"] = { link = "Label" },
	["@punctuation.delimiter"] = { link = "Delimiter" },
	["@tag.delimiter"] = { fg = P.red, bg = P.none },
	["@punctuation.bracket"] = { link = "Delimiter" },
	["@punctuation.special"] = { link = "Delimiter" },
	["@tag"] = { link = "Tag" },
	["@strong"] = { link = "Bold" },
	["@emphasis"] = { link = "Italic" },
	["@underline"] = { link = "Underline" },
	["@strike"] = { fg = P.none, bg = P.none, strikethrough = true },
	["@string.special"] = { fg = P.fg, bg = P.none },
	["@environment.name"] = { fg = P.cyan, bg = P.none },
	["@variable.builtin"] = { fg = P.yellow, bg = P.none },
	["@const.macro"] = { fg = P.orange, bg = P.none },
	["@type.builtin"] = { fg = P.orange, bg = P.none },
	["@annotation"] = { fg = P.cyan, bg = P.none },
	["@namespace"] = { fg = P.cyan, bg = P.none },
	["@string.special.symbol"] = { fg = P.fg, bg = P.none },
	["@variable.member"] = { fg = P.pale_red, bg = P.none },
	["@property"] = { link = 'Property' },
	["@variable.parameter"] = { fg = P.red, bg = P.none },
	["@parameter.reference"] = { fg = P.red, bg = P.none },
	["@attribute"] = { fg = P.red, bg = P.none },
	["@text"] = { fg = P.comment, bg = P.none },
	["@text.ini"] = { fg = P.light_green, bg = P.none },
	["@tag.attribute"] = { fg = P.light_blue, bg = P.none },
	["@error"] = { fg = P.error, bg = P.none },
	["@warning"] = { fg = P.warn, bg = P.none },
	["@query.linter.error"] = { fg = P.error, bg = P.none },
	["@uri"] = { fg = P.cyan, bg = P.none, underline = true },
	["@math"] = { fg = P.yellow, bg = P.none },
	["@exception.typescript"] = { fg = P.pink, bg = P.none },
	["@type.builtin.typescript"] = { fg = P.tsx_green, bg = P.none },
	["@lsp.type.class.typescript"] = { fg = P.tsx_green, bg = P.none },
	["@lsp.type.interface.typescript"] = { fg = P.ts_green, bg = P.none },
	["@lsp.type.variable.typescript"] = { fg = P.tsx_green, bg = P.none },
	["@markup.heading"] = { bold = true, fg = "#89ddff" },
	["@markup.list.unchecked"] = { bold = true, fg = "#89ddff" },
	["@text.title.gitcommit"] = { fg = "#89ddff" },
	gitcommitComment = { fg = tint(P.comment, 0.5) },
	["@comment.gitcommit"] = { fg = tint(P.comment, 0.5) },
	["@text.gitcommit"] = { fg = tint(P.comment, 0.5) },
	["@text.uri.gitcommit"] = { link = 'URL' },
	------------------------------------------------------------------------------
	-- Semantic tokens
	------------------------------------------------------------------------------
	["@lsp.type.namespace"] = { link = "@namespace" },
	["@lsp.type.type"] = { link = "@type" },
	["@lsp.type.class"] = { link = "@type" },
	["@lsp.type.enum"] = { link = "@type" },
	["@lsp.type.interface"] = { link = "@type" },
	["@lsp.type.struct"] = { link = "@structure" },
	["@lsp.type.typeParameter"] = { link = "TypeDef" },
	["@lsp.type.variable"] = { link = "@variable" },
	["@lsp.type.property"] = { link = "@property" },
	["@lsp.type.enumMember"] = { link = "@constant" },
	["@lsp.type.function"] = { link = "@function" },
	["@lsp.type.method"] = { link = "@method" },
	["@lsp.type.macro"] = { link = "@macro" },
	["@lsp.type.decorator"] = { link = "@function" },
	["@lsp.typemod.variable.readonly"] = { link = "@constant" },
	["@lsp.mod.deprecated"] = { strikethrough = true },
	------------------------------------------------------------------------------
	-- LSP
	------------------------------------------------------------------------------
	LspInlayHint = { link = "Comment" },
	DiagnosticError = { fg = P.error_red },
	DiagnosticWarn = { fg = P.dark_orange },
	DiagnosticInfo = { fg = P.blue },
	DiagnosticHint = { fg = P.darker_green },
	DiagnosticSignError = { link = "DiagnosticError" },
	DiagnosticSignWarn = { link = "DiagnosticWarn" },
	DiagnosticSignInfo = { link = "DiagnosticInfo" },
	DiagnosticSignHint = { link = "DiagnosticHint" },
	-- DiagnosticSignErrorLine = { link = "DiagnosticError" },
	-- DiagnosticSignWarnLine = { link = "DiagnosticWarn" },
	-- DiagnosticSignInfoLine = { link = "DiagnosticInfo" },
	-- DiagnosticSignHintLine = { link = "DiagnosticHint" },
	DiagnosticSignErrorNr = { link = "DiagnosticError" },
	DiagnosticSignWarnNr = { link = "DiagnosticWarn" },
	DiagnosticSignInfoNr = { link = "DiagnosticInfo" },
	DiagnosticSignHintNr = { link = "DiagnosticHint" },
	DiagnosticSignErrorCursorNr = { link = "DiagnosticError" },
	DiagnosticSignWarnCursorNr = { link = "DiagnosticWarn" },
	DiagnosticSignInfoCursorNr = { link = "DiagnosticInfo" },
	DiagnosticSignHintCursorNr = { link = "DiagnosticHint" },
	DiagnosticFloatingError = { link = "DiagnosticError" },
	DiagnosticFloatingWarn = { link = "DiagnosticWarn" },
	DiagnosticFloatingInfo = { link = "DiagnosticInfo" },
	DiagnosticFloatingHint = { link = "DiagnosticHint" },
	DiagnosticUnderlineError = { undercurl = true, sp = P.error_red },
	DiagnosticUnderlineWarn = { undercurl = true, sp = tint(P.dark_orange, -0.2) },
	DiagnosticUnderlineInfo = { undercurl = true, sp = P.blue },
	DiagnosticUnderlineHint = { undercurl = true, sp = P.darker_green },
	DiagnosticVirtualTextError = { italic = true, fg = P.error_red, bg = tint(P.pale_red, -0.7) },
	DiagnosticVirtualTextWarn = { italic = true, fg = P.dark_orange, bg = tint(P.dark_orange, -0.7) },
	DiagnosticVirtualTextInfo = { italic = true, fg = P.pale_blue, bg = tint(P.pale_blue, -0.7) },
	DiagnosticVirtualTextHint = { italic = true, fg = P.dark_green, bg = tint(P.darker_green, -0.7) },
}
