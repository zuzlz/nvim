vim.cmd('highlight clear')
vim.cmd('syntax reset')


vim.g.colors_name = "handmade"
vim.opt.background = "dark"

local hi = function(opts)
    vim.cmd(
        string.format("hi %s guifg=%s guibg=%s gui=%s guisp=%s",
            opts.group,
            opts.guifg or "NONE",
            opts.guibg or "NONE",
            opts.gui or "NONE",
            opts.guisp or "NONE"
        )
    )
end

local link = function(from, to)
    vim.cmd(string.format("hi! link %s %s", from, to))
end

local hl_cursor = "#00EE00"
local hl_text = "#A08563"
local hl_syntax = "#b09573"
local hl_background = "#0C0C0C"
local hl_cursorline = "#1f1f27"
local hl_constant = "#6B8E23"
local hl_function = "#cc5735"
local hl_keyword = "#CB9401"
local hl_preproc = "#478980"
local hl_highlight = "#3A0000"
local hl_highlighttext = "#c4b82b"
local hl_popup = "#000000"
local hl_comment = "#686868"
local hl_search = "#315268"
local hl_type = "#d8a51d"
local hl_error = "#FF0000"
local hl_warning = "#f0500c"

local hl_diffdelete = '#341c28'
local hl_diffadd = '#1c3428'
local hl_diffchange = '#1c2834'

link("Boolean", "Constant")
link("Character", "Constant")
hi { group = "ColorColumn", guibg = hl_cursorline }
hi { group = "Comment", gui = "italic", guifg = hl_comment }
hi { group = "Conceal", guifg = "LightGrey", guibg = "DarkGrey" }
link("Conditional", "Statement")
hi { group = "Constant", guifg = hl_constant }
hi { group = "CurSearch", gui = "underline", guifg = hl_type, guibg = hl_search }

hi { group = "Cursor", guifg = hl_background, guibg = hl_cursor }
hi { group = "CursorColumn", guibg = hl_cursorline }
hi { group = "CursorLine", guibg = hl_cursorline }
link("CursorLineFold", "FoldColumn")
hi { group = "CursorLineNr", gui = "bold", guifg = hl_cursorline }
link("CursorLineSign", "SignColumn")
hi { group = "LineNr", guifg = hl_cursorline }
link("LineNrAbove", "LineNr")
link("LineNrBelow", "LineNr")

link("Debug", "Special")
link("Define", "PreProc")
link("Delimiter", "Special")
hi { group = "Directory", gui = "bold", guifg = hl_preproc }
link("EndOfBuffer", "NonText")
hi { group = "Error", guifg = "None", guibg = "None" }
hi { group = "ErrorMsg", guifg = "None", guibg = "None" }
link("Exception", "Statement")
link("Float", "Number")
-- link("FloatBorder",      "WinSeparator") TODO:
hi { group = "FloatBorder", guibg = hl_popup }
hi { group = "FloatShadow", guibg = "Black", blend = "80" }
hi { group = "FloatShadowThrough", guibg = "Black", blend = "100" }
link("FloatTitle", "Title")
hi { group = "FoldColumn", guifg = "Cyan", guibg = "Grey" }
hi { group = "Folded", guifg = "Cyan", guibg = "DarkGrey" }
link("Function", "Identifier")
hi { group = "Identifier", guifg = hl_function }
hi { group = "Ignore", guifg = "bg" }
hi { group = "IncSearch", guifg = hl_type, guibg = hl_search }
link("Include", "PreProc")
link("Keyword", "Statement")
link("Label", "Statement")
link("Macro", "PreProc")
hi { group = "MatchParen", guibg = hl_search }
hi { group = "ModeMsg", gui = "bold" }
hi { group = "MoreMsg", gui = "bold", guifg = "SeaGreen" }
--MsgArea         cleared
link("MsgSeparator", "StatusLine")
hi { group = "NonText", gui = "bold", guifg = "Blue" }
hi { group = "Normal", guifg = hl_text, guibg = hl_background }
link("NormalFloat", "Pmenu")
hi { group = "NormalNC", guibg = hl_popup }
link("Number", "Constant")
link("Operator", "Statement")
hi { group = "Pmenu", guibg = hl_popup }
link("PmenuExtra", "Pmenu")
link("PmenuExtraSel", "PmenuSel")
link("PmenuKind", "Pmenu")
link("PmenuKindSel", "PmenuSel")
hi { group = "PmenuSbar", guibg = hl_cursorline }
hi { group = "PmenuSel", guibg = hl_cursorline }
link("PmenuSel", "Cursorline")
hi { group = "PmenuThumb", guibg = hl_comment }
link("PreCondit", "PreProc")
hi { group = "PreProc", guifg = hl_preproc }
hi { group = "Question", gui = "bold", guifg = hl_constant }
link("QuickFixLine", "Search")
hi { group = "RedrawDebugClear", guibg = "Yellow" }
hi { group = "RedrawDebugComposed", guibg = "Green" }
hi { group = "RedrawDebugNormal", gui = "reverse" }
hi { group = "RedrawDebugRecompose", guibg = "Red" }
link("Repeat", "Statement")
hi { group = "Search", guibg = hl_highlight }
hi { group = "SignColumn", guifg = hl_type }
-- link("SignColumn", "StatusLine")
hi { group = "Special", guifg = hl_syntax }
link("SpecialChar", "Special")
link("SpecialComment", "Special")
hi { group = "SpecialKey", guifg = "Cyan" }
hi { group = "SpellBad", gui = "undercurl", guisp = "Red" }
hi { group = "SpellCap", gui = "undercurl", guisp = "Blue" }
hi { group = "SpellLocal", gui = "undercurl", guisp = "Cyan" }
hi { group = "SpellRare", gui = "undercurl", guifg = "Magenta" }
hi { group = "Statement", gui = "bold", guifg = hl_keyword }
hi { group = "StatusLine", gui = "bold", guifg = hl_keyword, guibg = hl_cursorline }
hi { group = "StatusLineNC", guifg = hl_keyword, guibg = hl_popup }
link("StorageClass", "Type")
link("String", "Constant")
link("Structure", "Type")
link("Substitute", "Search")
hi { group = "TabLine", gui = "underline", guibg = hl_cursorline }
hi { group = "TabLineFill", gui = "reverse" }
hi { group = "TabLineSel", gui = "bold" }
link("Tag", "Special")
hi { group = "TermCursor", gui = "reverse" }
--TermCursorNC    cleared
hi { group = "Title", gui = "bold", guifg = hl_keyword }
hi { group = "Todo", guifg = hl_background, guibg = hl_error }
hi { group = "Type", gui = "bold", guifg = hl_type }
link("Typedef", "Type")
hi { group = "Underlined", gui = "underline", guifg = "#80a0ff" }
-- link("VertSplit",        "Normal") TODO:
hi { group = "VertSplit", guifg = hl_popup, guibg = hl_popup }
hi { group = "Visual", guifg = hl_highlighttext, guibg = hl_highlight }
hi { group = "WarningMsg", guifg = "None" }
link("Whitespace", "NonText")
hi { group = "WildMenu", guifg = hl_cursorline, guibg = hl_popup }
hi { group = "WinBar", gui = "bold" }
link("WinBarNC", "WinBar")
link("WinSeparator", "VertSplit")
--box             cleared
hi { group = "lCursor", guifg = "bg", guibg = "fg" }



-- LUA
--luaBlock        cleared
link("luaComment", "Comment")
link("luaCommentDelimiter", "luaComment")
link("luaCond", "Conditional")
link("luaCondElse", "Conditional")
--luaCondElseif   cleared
--luaCondEnd      cleared
--luaCondStart    cleared
link("luaConstant", "Constant")
link("luaError", "Error")
link("luaFor", "Repeat")
link("luaFunc", "Identifier")
link("luaFunction", "Function")
--luaFunctionBlock  cleared
--luaInnerComment  cleared
link("luaLabel", "Label")
link("luaMetaMethod", "Function")
link("luaNumber", "Number")
link("luaOperator", "Operator")
--luaParen        cleared
link("luaParenError", "Error")
link("luaRepeat", "Repeat")
--luaRepeatBlock  cleared
link("luaSpecial", "SpecialChar")
link("luaStatement", "Statement")
link("luaString", "String")
link("luaString2", "String")
link("luaStringDelimiter", "luaString")
link("luaSymbolOperator", "luaOperator")
link("luaTable", "Structure")
--luaTableBlock   cleared
link("luaTodo", "Todo")
--luaWhile        cleared


-- DIFF
hi { group = "DiffAdd", guibg = hl_diffadd }
hi { group = "diffAdded", guibg = hl_diffadd }
hi { group = "DiffChange", guibg = hl_diffchange }
hi { group = "diffChanged", guibg = hl_diffchange }
hi { group = "DiffDelete", gui = "bold", guibg = hl_diffdelete }
hi { group = "diffRemoved", gui = "bold", guibg = hl_diffdelete }
hi { group = "DiffText", gui = "bold", guifg = hl_highlighttext, guibg = hl_diffchange }

-- diffOnly       xxx links to Constant
-- diffIdentical  xxx links to Constant
-- diffDiffer     xxx links to Constant
-- diffBDiffer    xxx links to Constant
-- diffIsA        xxx links to Constant
-- diffNoEOL      xxx links to Constant
-- diffCommon     xxx links to Constant
-- diffSubname    xxx links to PreProc
-- diffLine       xxx links to Statement
-- diffFile       xxx links to Type
-- diffOldFile    xxx links to diffFile
-- diffNewFile    xxx links to diffFile
-- diffIndexLine  xxx links to PreProc
-- diffComment    xxx links to Comment


-- NETRW
hi { group = "netrwEXE", guifg = hl_cursor }
-- netrwEXE       xxx guifg=#00ee00
-- netrwHide      xxx links to netrwComment
-- netrwSortBy    xxx cleared
-- netrwSortSeq   xxx cleared
-- netrwQuickHelp xxx cleared
-- netrwVersion   xxx links to Identifier
-- netrwCopyTgt   xxx cleared
-- netrwDir       xxx links to Directory
-- netrwSymLink   xxx links to Question
-- netrwLink      xxx links to Special
-- netrwPlain     xxx cleared
-- netrwClassify  xxx links to Function
-- netrwSpecial   xxx cleared
-- netrwDateSep   xxx links to Delimiter
-- netrwTime      xxx cleared
-- netrwSizeDate  xxx cleared
-- netrwTreeBarSpace xxx cleared
-- netrwTreeBar   xxx links to Special
-- netrwTimeSep   xxx links to netrwDateSep
-- netrwComment   xxx links to Comment
-- netrwHidePat   xxx links to Statement
-- netrwSlash     xxx cleared
-- netrwHideSep   xxx links to netrwComment
-- netrwList      xxx links to Statement
-- netrwComma     xxx links to netrwComment
-- netrwHelpCmd   xxx links to Function
-- netrwQHTopic   xxx links to Number
-- netrwCmdSep    xxx links to Delimiter
-- netrwCmdNote   xxx cleared
-- netrwMarkFile  xxx links to TabLineSel
-- netrwCoreDump  xxx links to WarningMsg
-- netrwData      xxx links to Folded
-- netrwHdr       xxx links to netrwPlain
-- netrwLex       xxx links to netrwPlain
-- netrwLib       xxx links to DiffChange
-- netrwMakefile  xxx links to DiffChange
-- netrwYacc      xxx links to netrwPlain
-- netrwPix       xxx links to Special
-- netrwBak       xxx links to netrwGray
-- netrwGray      xxx links to Folded
-- netrwCompress  xxx links to netrwGray
-- netrwSpecFile  xxx links to netrwGray
-- netrwObj       xxx links to netrwGray
-- netrwTags      xxx links to netrwGray
-- netrwTilde     xxx links to netrwGray
-- netrwTmp       xxx links to netrwGray
-- netrwSuffixes  xxx links to SpecialKey

-- Nvim internal
link("NvimAnd", "NvimBinaryOperator")
link("NvimArrow", "Delimiter")
link("NvimAssignment", "Operator")
link("NvimAssignmentWithAddition", "NvimAugmentedAssignment")
link("NvimAssignmentWithConcatenation", "NvimAugmentedAssignment")
link("NvimAssignmentWithSubtraction", "NvimAugmentedAssignment")
link("NvimAugmentedAssignment", "NvimAssignment")
link("NvimBinaryMinus", "NvimBinaryOperator")
link("NvimBinaryOperator", "NvimOperator")
link("NvimBinaryPlus", "NvimBinaryOperator")
link("NvimCallingParenthesis", "NvimParenthesis")
link("NvimColon", "Delimiter")
link("NvimComma", "Delimiter")
link("NvimComparison", "NvimBinaryOperator")
link("NvimComparisonModifier", "NvimComparison")
link("NvimConcat", "NvimBinaryOperator")
link("NvimConcatOrSubscript", "NvimConcat")
link("NvimContainer", "NvimParenthesis")
link("NvimCurly", "NvimSubscript")
link("NvimDict", "NvimContainer")
link("NvimDivision", "NvimBinaryOperator")
link("NvimDoubleQuote", "NvimStringQuote")
link("NvimDoubleQuotedBody", "NvimStringBody")
link("NvimDoubleQuotedEscape", "NvimStringSpecial")
link("NvimDoubleQuotedUnknownEscape", "NvimInvalidValue")
link("NvimEnvironmentName", "NvimIdentifier")
link("NvimEnvironmentSigil", "NvimOptionSigil")
link("NvimFigureBrace", "NvimInternalError")
link("NvimFloat", "NvimNumber")
link("NvimIdentifier", "Identifier")
link("NvimIdentifierKey", "NvimIdentifier")
link("NvimIdentifierName", "NvimIdentifier")
link("NvimIdentifierScope", "NvimIdentifier")
link("NvimIdentifierScopeDelimiter", "NvimIdentifier")
link("NvimInternalError", "Erorr")
link("NvimInvalid", "Error")
link("NvimInvalidAnd", "NvimInvalidBinaryOperator")
link("NvimInvalidArrow", "NvimInvalidDelimiter")
link("NvimInvalidAssignment", "NvimInvalid")
link("NvimInvalidAssignmentWithAddition", "NvimInvalidAugmentedAssignment")
link("NvimInvalidAssignmentWithConcatenation", "NvimInvalidAugmentedAssignment")
link("NvimInvalidAssignmentWithSubtraction", "NvimInvalidAugmentedAssignment")
link("NvimInvalidAugmentedAssignment", "NvimInvalidAssignment")
link("NvimInvalidBinaryMinus", "NvimInvalidBinaryOperator")
link("NvimInvalidBinaryOperator", "NvimInvalidOperator")
link("NvimInvalidBinaryPlus", "NvimInvalidBinaryOperator")
link("NvimInvalidCallingParenthesis", "NvimInvalidParenthesis")
link("NvimInvalidColon", "NvimInvalidDelimiter")
link("NvimInvalidComma", "NvimInvalidDelimiter")
link("NvimInvalidComparison", "NvimInvalidBinaryOperator")
link("NvimInvalidComparisonModifier", "NvimInvalidComparison")
link("NvimInvalidConcat", "NvimInvalidBinaryOperator")
link("NvimInvalidConcatOrSubscript", "NvimInvalidConcat")
link("NvimInvalidContainer", "NvimInvalidParenthesis")
link("NvimInvalidCurly", "NvimInvalidSubscript")
link("NvimInvalidDelimiter", "NvimInvalid")
link("NvimInvalidDict", "NvimInvalidContainer")
link("NvimInvalidDivision", "NvimInvalidBinaryOperator")
link("NvimInvalidDoubleQuote", "NvimInvalidStringQuote")
link("NvimInvalidDoubleQuotedBody", "NvimInvalidStringBody")
link("NvimInvalidDoubleQuotedEscape", "NvimInvalidStringSpecial")
link("NvimInvalidDoubleQuotedUnknownEscape", "NvimInvalidValue")
link("NvimInvalidEnvironmentName", "NvimInvalidIdentifier")
link("NvimInvalidEnvironmentSigil", "NvimInvalidOptionSigil")
link("NvimInvalidFigureBrace", "NvimInvalidDelimiter")
link("NvimInvalidFloat", "NvimInvalidNumber")
link("NvimInvalidIdentifier", "NvimInvalidValue")
link("NvimInvalidIdentifierKey", "NvimInvalidIdentifier")
link("NvimInvalidIdentifierName", "NvimInvalidIdentifier")
link("NvimInvalidIdentifierScope", "NvimInvalidIdentifier")
link("NvimInvalidIdentifierScopeDelimiter", "NvimInvalidIdentifier")
link("NvimInvalidLambda", "NvimInvalidParenthesis")
link("NvimInvalidList", "NvimInvalidContainer")
link("NvimInvalidMod", "NvimInvalidBinaryOperator")
link("NvimInvalidMultiplication", "NvimInvalidBinaryOperator")
link("NvimInvalidNestingParenthesis", "NvimInvalidParenthesis")
link("NvimInvalidNot", "NvimInvalidUnaryOperator")
link("NvimInvalidNumber", "NvimInvalidValue")
link("NvimInvalidNumberPrefix", "NvimInvalidNumber")
link("NvimInvalidOperator", "NvimInvalid")
link("NvimInvalidOptionName", "NvimInvalidIdentifier")
link("NvimInvalidOptionScope", "NvimInvalidIdentifierScope")
link("NvimInvalidOptionScopeDelimiter", "NvimInvalidIdentifierScopeDelimiter")
link("NvimInvalidOptionSigil", "NvimInvalidIdentifier")
link("NvimInvalidOr", "NvimInvalidBinaryOperator")
link("NvimInvalidParenthesis", "NvimInvalidDelimiter")
link("NvimInvalidPlainAssignment", "NvimInvalidAssignment")
link("NvimInvalidRegister", "NvimInvalidValue")
link("NvimInvalidSingleQuote", "NvimInvalidStringQuote")
link("NvimInvalidSingleQuotedBody", "NvimInvalidStringBody")
link("NvimInvalidSingleQuotedQuote", "NvimInvalidStringSpecial")
link("NvimInvalidSingleQuotedUnknownEscape", "NvimInternalError")
link("NvimInvalidSpacing", "ErrorMsg")
link("NvimInvalidString", "NvimInvalidValue")
link("NvimInvalidStringBody", "NvimStringBody")
link("NvimInvalidStringQuote", "NvimInvalidString")
link("NvimInvalidStringSpecial", "NvimStringSpecial")
link("NvimInvalidSubscript", "NvimInvalidParenthesis")
link("NvimInvalidSubscriptBracket", "NvimInvalidSubscript")
link("NvimInvalidSubscriptColon", "NvimInvalidSubscript")
link("NvimInvalidTernary", "NvimInvalidOperator")
link("NvimInvalidTernaryColon", "NvimInvalidTernary")
link("NvimInvalidUnaryMinus", "NvimInvalidUnaryOperator")
link("NvimInvalidUnaryOperator", "NvimInvalidOperator")
link("NvimInvalidUnaryPlus", "NvimInvalidUnaryOperator")
link("NvimInvalidValue", "NvimInvalid")
link("NvimLambda", "NvimParenthesis")
link("NvimList", "NvimContainer")
link("NvimMod", "NvimBinaryOperator")
link("NvimMultiplication", "NvimBinaryOperator")
link("NvimNestingParenthesis", "NvimParenthesis")
link("NvimNot", "NvimUnaryOperator")
link("NvimNumber", "Number")
link("NvimNumberPrefix", "Type")
link("NvimOperator", "Operator")
link("NvimOptionName", "NvimIdentifier")
link("NvimOptionScope", "NvimIdentifierScope")
link("NvimOptionScopeDelimiter", "NvimIdentifierScopeDelimiter")
link("NvimOptionSigil", "Type")
link("NvimOr", "NvimBinaryOperator")
link("NvimParenthesis", "Delimiter")
link("NvimPlainAssignment", "NvimAssignment")
link("NvimRegister", "SpecialChar")
link("NvimSingleQuote", "NvimStringQuote")
link("NvimSingleQuotedBody", "NvimStringBody")
link("NvimSingleQuotedQuote", "NvimStringSpecial")
link("NvimSingleQuotedUnknownEscape", "NvimInternalError")
link("NvimSpacing", "Normal")
link("NvimString", "String")
link("NvimStringBody", "NvimString")
link("NvimStringQuote", "NvimString")
link("NvimStringSpecial", "SpecialChar")
link("NvimSubscript", "NvimParenthesis")
link("NvimSubscriptBracket", "NvimSubscript")
link("NvimSubscriptColon", "NvimSubscript")
link("NvimTernary", "NvimOperator")
link("NvimTernaryColon", "NvimTernary")
link("NvimUnaryMinus", "NvimUnaryOperator")
link("NvimUnaryOperator", "NvimOperator")
link("NvimUnaryPlus", "NvimUnaryOperator")

-- lsp diagnostics
hi { group = "DiagnosticDeprecated", gui = "underline", guisp = hl_error }
hi { group = "DiagnosticError", guifg = hl_error, guibg = hl_cursorline }
hi { group = "DiagnosticHint", gui = "underline", guifg = hl_comment }
hi { group = "DiagnosticInfo", guifg = "LightBlue" }
hi { group = "DiagnosticOk", guifg = "LightGreen" }
hi { group = "DiagnosticUnderlineError", gui = "underline", guisp = hl_error }
hi { group = "DiagnosticUnderlineHint", gui = "underline", guisp = "LightGrey" }
hi { group = "DiagnosticUnderlineInfo", gui = "underline", guisp = "LightBlue" }
hi { group = "DiagnosticUnderlineOk", gui = "underline", guisp = "LightGreen" }
hi { group = "DiagnosticUnderlineWarn", gui = "underline", guisp = "Orange" }
hi { group = "DiagnosticWarn", guifg = hl_warning, guibg = hl_cursorline }
link("DiagnosticFloatingError", "DiagnosticError")
link("DiagnosticFloatingHint", "DiagnosticHint")
link("DiagnosticFloatingInfo", "DiagnosticInfo")
link("DiagnosticFloatingOk", "DiagnosticOk")
link("DiagnosticFloatingWarn", "DiagnosticWarn")
link("DiagnosticSignError", "DiagnosticError")
link("DiagnosticSignHint", "DiagnosticHint")
link("DiagnosticSignInfo", "DiagnosticInfo")
link("DiagnosticSignOk", "DiagnosticOk")
link("DiagnosticSignWarn", "DiagnosticWarn")
link("DiagnosticUnnecessary", "Comment")
link("DiagnosticVirtualTextError", "DiagnosticError")
link("DiagnosticVirtualTextHint", "DiagnosticHint")
link("DiagnosticVirtualTextInfo", "DiagnosticInfo")
link("DiagnosticVirtualTextOk", "DiagnosticOk")
link("DiagnosticVirtualTextWarn", "DiagnosticWarn")

-- treesitter
link("@attribute.diff", "DiffText")
link("@text.diff.add.diff", "DiffAdd")
link("@text.diff.change.diff", "DiffChange")
link("@text.diff.delete.diff", "DiffDelete")

link("@boolean", "Boolean")
link("@character", "Character")
link("@character.special", "SpecialChar")
link("@comment", "Comment")
link("@conditional", "Conditional")
link("@constant", "Constant")
link("@constant.builtin", "Special")
link("@constant.macro", "Define")
link("@constructor", "Special")
link("@debug", "Debug")
link("@define", "Define")
link("@error", "Error")
link("@exception", "Exception")
link("@variable.field", "Identifier")
link("@number.float", "Float")
link("@function", "Function")
link("@function.builtin", "Special")
link("@function.macro", "Macro")
link("@include", "Include")
link("@keyword", "Keyword")
link("@label", "Label")
--@lsp            cleared
link("@lsp.type.class", "Structure")
link("@lsp.type.comment", "Comment")
link("@lsp.type.decorator", "Function")
link("@lsp.type.enum", "Structure")
link("@lsp.type.enumMember", "Constant")
link("@lsp.type.function", "Function")
link("@lsp.type.interface", "Structure")
link("@lsp.type.macro", "Macro")
link("@lsp.type.method", "Function")
link("@lsp.type.namespace", "Structure")
link("@lsp.type.parameter", "Identifier")
link("@lsp.type.property", "Identifier")
link("@lsp.type.struct", "Structure")
link("@lsp.type.type", "Type")
link("@lsp.type.typeParameter", "Typedef")
link("@lsp.type.variable", "Identifier")
link("@macro", "Macro")
link("@method", "Function")
link("@module", "Identifier")
link("@number", "Number")
link("@operator", "Operator")
link("@variable.parameter", "Identifier")
link("@preproc", "PreProc")
link("@property", "Identifier")
link("@punctuation", "Delimiter")
link("@repeat", "Repeat")
link("@storageclass", "StorageClass")
link("@string", "String")
link("@string.escape", "SpecialChar")
link("@markup.link.label", "SpecialChar")
link("@tag", "Tag")
--@text           cleared
link("@markup.raw", "Comment")
link("@markup.link", "Identifier")
link("@markup.heading", "Title")
link("@text.todo", "Todo")
link("@text.underline", "Underlined")
link("@markup.link.uri", "Underlined")
link("@type", "Type")
link("@type.definition", "Typedef")
link("@variable", "Identifier")

-- mini.hipattern
link("MiniAnimateCursor", "Cursor")
link("MiniHipatternsTodo", "Todo")


-- telescope
link("TelescopeBorder", "TelescopeNormal")
link("TelescopeMatching", "Special")
link("TelescopeMultiIcon", "Identifier")
link("TelescopeMultiSelection", "Type")
link("TelescopeNormal", "Normal")
link("TelescopePreviewBlock", "Constant")
link("TelescopePreviewBorder", "TelescopeBorder")
link("TelescopePreviewCharDev", "Constant")
link("TelescopePreviewDate", "Directory")
link("TelescopePreviewDirectory", "Directory")
link("TelescopePreviewExecute", "String")
link("TelescopePreviewGroup", "Constant")
link("TelescopePreviewHyphen", "NonText")
link("TelescopePreviewLine", "Visual")
link("TelescopePreviewLink", "Special")
link("TelescopePreviewMatch", "Search")
link("TelescopePreviewMessage", "TelescopePreviewNormal")
link("TelescopePreviewMessageFillchar", "TelescopePreviewMessage")
link("TelescopePreviewNormal", "TelescopeNormal")
link("TelescopePreviewPipe", "Constant")
link("TelescopePreviewRead", "Constant")
link("TelescopePreviewSize", "String")
link("TelescopePreviewSocket", "Statement")
link("TelescopePreviewSticky", "Keyword")
link("TelescopePreviewTitle", "TelescopeTitle")
link("TelescopePreviewUser", "Constant")
link("TelescopePreviewWrite", "Statement")
link("TelescopePromptBorder", "TelescopeBorder")
link("TelescopePromptCounter", "Keyword")
link("TelescopePromptNormal", "TelescopeNormal")
link("TelescopePromptPrefix", "Identifier")
link("TelescopePromptTitle", "TelescopeTitle")
link("TelescopeResultsBorder", "TelescopeBorder")
link("TelescopeResultsClass", "Function")
link("TelescopeResultsComment", "Comment")
link("TelescopeResultsConstant", "Constant")
link("TelescopeResultsDiffAdd", "DiffAdd")
link("TelescopeResultsDiffChange", "DiffChange")
link("TelescopeResultsDiffDelete", "DiffDelete")
link("TelescopeResultsDiffUntracked", "NonText")
link("TelescopeResultsField", "Function")
link("TelescopeResultsFunction", "Function")
link("TelescopeResultsIdentifier", "Identifier")
link("TelescopeResultsLineNr", "LineNr")
link("TelescopeResultsMethod", "cleared")
link("TelescopeResultsNormal", "TelescopeNormal")
link("TelescopeResultsNumber", "Number")
link("TelescopeResultsOperator", "Operator")
link("TelescopeResultsSpecialComment", "SpecialComment")
link("TelescopeResultsStruct", "cleared")
link("TelescopeResultsTitle", "TelescopeTitle")
link("TelescopeResultsVariable", "SpecialChar")
link("TelescopeSelection", "CursorLine")
link("TelescopeSelectionCaret", "TelescopeSelection")
link("TelescopeTitle", "TelescopeBorder")

-- mason

-- MasonHighlightBlockBoldSecondary xxx cleared
-- MasonHighlightSecondary xxx cleared
-- MasonError     xxx links to ErrorMsg
-- MasonWarning   xxx links to WarningMsg
-- MasonHeading   xxx cleared
-- MasonHeader    xxx cleared
-- MasonHeaderSecondary xxx cleared
-- MasonMutedBlockBold xxx cleared
-- MasonHighlight xxx cleared
-- MasonNormal    xxx links to NormalFloat
-- MasonHighlightBlock xxx cleared
-- MasonMutedBlock xxx cleared
-- MasonHighlightBlockBold xxx cleared
-- MasonLink      xxx links to MasonHighlight
-- MasonHighlightBlockSecondary xxx cleared
-- MasonMuted     xxx cleared

-- HTML
link("htmlError",      "Error")
link("htmlSpecialChar", "Special")
link("htmlString",     "String")
link("htmlValue",      "String")
-- htmlTagN       xxx cleared
link("htmlTagError",   "htmlError")
link("htmlEndTag",     "Identifier")
link("htmlArg",        "Type")
link("htmlEvent",      "javaScript")
link("htmlCssDefinition", "Special")
link("htmlTag",        "Function")
link("htmlTagName",    "htmlStatement")
link("htmlSpecialTagName", "Exception")
link("htmlMathTagName", "htmlTagName")
link("htmlSvgTagName", "htmlTagName")
-- htmlMath       xxx cleared
-- htmlSvg        xxx cleared
link("htmlCommentError", "htmlError")
link("htmlComment",    "Comment")
link("htmlCommentNested", "htmlError")
link("htmlPreStmt",    "PreProc")
link("htmlPreError",   "Error")
link("htmlPreAttr",    "String")
link("htmlPreProc",    "PreProc")
link("htmlPreProcAttrError", "Error")
link("htmlPreProcAttrName", "PreProc")
link("htmlLink",       "Underlined")
-- htmlStrike     xxx cterm=strikethrough gui=strikethrough
-- htmlBoldUnderline xxx cterm=bold,underline gui=bold,underline
-- htmlBoldItalic xxx cterm=bold,italic gui=bold,italic
-- htmlBold       xxx cterm=bold gui=bold
-- htmlBoldUnderlineItalic xxx cterm=bold,underline,italic gui=bold,underline,italic
link("htmlBoldItalicUnderline", "htmlBoldUnderlineItalic")
link("htmlUnderlineBold", "htmlBoldUnderline")
-- htmlUnderlineItalic xxx cterm=underline,italic gui=underline,italic
-- htmlUnderline  xxx cterm=underline gui=underline
link("htmlUnderlineBoldItalic", "htmlBoldUnderlineItalic")
link("htmlUnderlineItalicBold", "htmlBoldUnderlineItalic")
link("htmlItalicBold", "htmlBoldItalic")
link("htmlItalicUnderline", "htmlUnderlineItalic")
-- htmlItalic     xxx cterm=italic gui=italic
link("htmlItalicBoldUnderline", "htmlBoldUnderlineItalic")
link("htmlItalicUnderlineBold", "htmlBoldUnderlineItalic")
link("htmlLeadingSpace", "NONE")
link("htmlH1",         "Title")
link("htmlH2",         "htmlH1")
link("htmlH3",         "htmlH2")
link("htmlH4",         "htmlH3")
link("htmlH5",         "htmlH4")
link("htmlH6",         "htmlH5")
link("htmlTitle",      "Title")
link("htmlHead",       "PreProc")
link("htmlCssStyleComment", "Comment")
link("htmlScriptTag",  "htmlTag")
link("htmlEventSQ",    "htmlEvent")
link("htmlEventDQ",    "htmlEvent")
link("htmlStyleArg",   "htmlString")
-- htmlHighlight  xxx cleared
-- htmlHighlightSkip xxx cleared
link("htmlStatement",  "Statement")

