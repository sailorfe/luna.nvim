local lush = require("lush")
local hsl = lush.hsl

-- base colors
local base = hsl(280, 25, 16)
local surface = hsl(280, 25, 24)
local overlay = hsl(280, 25, 30)
-- text colors
local muted = hsl(280, 15, 40)
local faint = hsl(280, 25, 70)
local text = hsl(280, 50, 90)
local light = hsl(280, 100, 96)
-- accent colors
local rei = hsl(360, 80, 70)
local makoto = hsl(75, 80, 70)
local minako = hsl(45, 80, 70)
local ami = hsl(210, 70, 70)
local hotaru = hsl(270, 70, 70)
local usagi = hsl(330, 70, 70)
-- highlights
local low = hsl(280, 35, 15)
local med = hsl(280, 30, 30)
local high = hsl(280, 25, 45)

---@diagnostic disable: undefined-global
local theme = lush(function(injected_functions)
	local sym = injected_functions.sym
	return {

		-- ui
		Normal({ bg = base, fg = text }),
		NormalFloat({ bg = surface, fg = text }),
		NormalNC({ bg = base, fg = faint }),

		FloatBorder({ bg = surface, fg = muted }),
		FloatTitle({ bg = surface, fg = hotaru, gui = "bold" }),
		FloatFooter({ FloatBorder }),

		ColorColumn({ bg = surface }),
		Conceal({ fg = muted }),
		CursorLine({ bg = overlay }),
		CursorColumn({ bg = overlay }),
		CursorLineNr({ fg = text, gui = "bold" }),
		LineNr({ fg = muted }),
		LineNrAbove({ LineNr }),
		LineNrBelow({ LineNr }),

		SignColumn({ bg = base }),
		FoldColumn({ fg = high, bg = surface }),
		Folded({ bg = low, fg = faint }),

		StatusLine({ bg = overlay, fg = text }),
		StatusLineNC({ bg = surface, fg = muted }),
		WinBar({ bg = med, fg = faint }),
		WinBarNC({ bg = med, fg = muted }),
		WinSeparator({ fg = surface }), -- 0.9+
		VertSplit({ fg = surface }), -- for compatibility

		TabLine({ bg = surface, fg = muted }),
		TabLineFill({ bg = base }),
		TabLineSel({ bg = overlay, fg = hotaru, gui = "bold" }),

		Pmenu({ bg = surface, fg = text }),
		PmenuSel({ bg = overlay, fg = hotaru, gui = "bold" }),
		PmenuKind({ bg = surface, fg = usagi }),
		PmenuKindSel({ bg = overlay, fg = usagi, gui = "bold" }),
		PmenuExtra({ bg = surface, fg = muted }),
		PmenuExtraSel({ bg = overlay, fg = faint }),
		PmenuSbar({ bg = overlay }),
		PmenuThumb({ bg = high }),
		PmenuMatch({ fg = hotaru, gui = "bold" }), -- 0.11 fuzzy match
		PmenuMatchSel({ fg = hotaru, gui = "bold_underline" }),

		-- 0.11: popup/window title when using noice / native cmdline
		MsgArea({ fg = text }),
		MsgSeparator({ fg = overlay }),
		ModeMsg({ fg = text, gui = "bold" }),
		MoreMsg({ fg = makoto }),
		Question({ fg = ami }),
		WarningMsg({ fg = minako }),
		ErrorMsg({ fg = rei, gui = "bold" }),

		Cursor({ bg = text, fg = base }),
		lCursor({ Cursor }),
		CursorIM({ Cursor }),
		TermCursor({ bg = hotaru, fg = base }),
		TermCursorNC({ bg = faint, fg = base }),

		Visual({ bg = high }),
		VisualNOS({ Visual }),
		CurSearch({ bg = minako, fg = base }),
		IncSearch({ CurSearch }),
		Search({ bg = med, fg = minako }),
		Substitute({ bg = ami, fg = base }),

		MatchParen({ bg = high, gui = "bold" }),

		NonText({ fg = muted }),
		Whitespace({ fg = overlay }),
		SpecialKey({ fg = muted }),
		EndOfBuffer({ fg = muted }),

		Directory({ fg = ami }),
		Title({ fg = hotaru, gui = "bold" }),
		WildMenu({ bg = text, fg = base }),

		QuickFixLine({ bg = overlay, gui = "bold" }),

		-- diffs
		DiffAdd({ bg = makoto, fg = base }),
		DiffChange({ bg = minako, fg = base }),
		DiffDelete({ fg = rei, gui = "bold" }),
		DiffText({ bg = ami, fg = base }),

		-- spell
		SpellBad({ fg = rei, gui = "undercurl" }),
		SpellCap({ fg = minako, gui = "undercurl" }),
		SpellLocal({ fg = makoto, gui = "undercurl" }),
		SpellRare({ fg = ami, gui = "undercurl" }),

		-- misc
		Underlined({ gui = "underline" }),
		Ignore({ fg = muted }),
		Error({ bg = rei, fg = base }),
		Todo({ fg = minako, gui = "bold" }),

		-- traditional syntax
		Comment({ fg = faint, gui = "italic" }),

		Constant({ fg = minako }),
		String({ Constant }), -- maybe change
		Character({ Constant }),
		Number({ Constant }),
		Boolean({ Constant }),
		Float({ Constant }),

		Identifier({ fg = usagi }),
		Function({ fg = hotaru }),

		Statement({ fg = ami, gui = "bold" }),
		Conditional({ Statement }),
		Repeat({ Statement }),
		Label({ Statement }),
		Operator({ fg = text }),
		Keyword({ Statement }), -- maybe change
		Exception({ Statement }),

		PreProc({ fg = ami }),
		Include({ PreProc }),
		Define({ PreProc }),
		Macro({ PreProc }),
		PreCondit({ PreProc }),

		Type({ fg = makoto }),
		StorageClass({ Type }),
		Structure({ Type }),
		Typedef({ fg = makoto, gui = "italic" }),

		Special({ fg = usagi }),
		SpecialChar({ Special }),
		Tag({ Special }),
		Delimiter({ fg = text }),
		SpecialComment({ fg = faint, gui = "bold" }),
		Debug({ Special }),

		-- diagonistics
		DiagnosticError({ fg = rei }),
		DiagnosticWarn({ fg = minako }),
		DiagnosticInfo({ fg = ami }),
		DiagnosticHint({ fg = hotaru }),
		DiagnosticOk({ fg = makoto }),

		DiagnosticVirtualTextError({ DiagnosticError, gui = "italic" }),
		DiagnosticVirtualTextWarn({ DiagnosticWarn, gui = "italic" }),
		DiagnosticVirtualTextInfo({ DiagnosticInfo, gui = "italic" }),
		DiagnosticVirtualTextHint({ DiagnosticHint, gui = "italic" }),
		DiagnosticVirtualTextOk({ DiagnosticOk, gui = "italic" }),

		DiagnosticUnderlineError({ DiagnosticError, gui = "undercurl" }),
		DiagnosticUnderlineWarn({ DiagnosticWarn, gui = "undercurl" }),
		DiagnosticUnderlineInfo({ DiagnosticInfo, gui = "undercurl" }),
		DiagnosticUnderlineHint({ DiagnosticHint, gui = "undercurl" }),
		DiagnosticUnderlineOk({ DiagnosticOk, gui = "undercurl" }),

		DiagnosticFloatingError({ DiagnosticError }),
		DiagnosticFloatingWarn({ DiagnosticWarn }),
		DiagnosticFloatingInfo({ DiagnosticInfo }),
		DiagnosticFloatingHint({ DiagnosticHint }),
		DiagnosticFloatingOk({ DiagnosticOk }),

		DiagnosticSignError({ DiagnosticError }),
		DiagnosticSignWarn({ DiagnosticWarn }),
		DiagnosticSignInfo({ DiagnosticInfo }),
		DiagnosticSignHint({ DiagnosticHint }),
		DiagnosticSignOk({ DiagnosticOk }),

		-- 0.10+ inline diagnostic (virtual_lines)
		DiagnosticDeprecated({ gui = "strikethrough", fg = muted }),

		-- treesitter (0.9+)

		-- identifiers
		sym("@variable")({ fg = text, gui = "italic" }),
		sym("@variable.builtin")({ fg = hotaru, gui = "bold_italic" }),
		sym("@variable.parameter")({ Type }), -- (injected_functions)
		sym("@variable.member")({ fg = text }), -- struct fields, object keys

		sym("@constant")({ Constant }),
		sym("@constant.builtin")({ fg = minako, gui = "bold_italic" }),
		sym("@constant.macro")({ Define }),

		sym("@module")({ fg = minako }),
		sym("@module.builtin")({ fg = minako, gui = "bold_italic" }),
		sym("@label")({ fg = ami }),

		-- literals
		sym("@string")({ String }),
		sym("@string.escape")({ fg = hotaru }),
		sym("@string.special")({ fg = hotaru }),
		sym("@string.regexp")({ fg = minako }),
		sym("@string.special.url")({ fg = ami, gui = "underline" }),

		sym("@character")({ Character }),
		sym("@character.special")({ SpecialChar }),
		sym("@boolean")({ Boolean }),
		sym("@number")({ Number }),
		sym("@number.float")({ Float }),

		-- types
		sym("@type")({ Type }),
		sym("@type.builtin")({ fg = makoto, gui = "bold_italic" }),
		sym("@type.definition")({ Typedef }),

		-- functions
		sym("@function")({ Function }),
		sym("@function.builtin")({ fg = usagi, gui = "bold_italic" }),
		sym("@function.macro")({ Macro }),
		sym("@function.method")({ Function }),
		sym("@constructor")({ fg = hotaru }),

		-- keywords
		sym("@keyword")({ Keyword }),
		sym("@keyword.function")({ fg = ami, gui = "italic" }),
		sym("@keyword.operator")({ fg = ami }),
		sym("@keyword.import")({ Include }),
		sym("@keyword.repeat")({ Repeat }),
		sym("@keyword.return")({ fg = rei, gui = "italic" }),
		sym("@keyword.exception")({ Exception }),
		sym("@keyword.conditional")({ Conditional }),
		sym("@keyword.directive")({ PreProc }),

		-- punctuation
		sym("@punctuation.delimiter")({ fg = muted }),
		sym("@punctuation.bracket")({ fg = text }),
		sym("@punctuation.special")({ fg = hotaru }),

		-- comments
		sym("@comment")({ Comment }),
		sym("@comment.documentation")({ fg = faint, gui = "italic" }),
		sym("@comment.error")({ fg = rei, gui = "bold" }),
		sym("@comment.warning")({ fg = minako, gui = "bold" }),
		sym("@comment.todo")({ fg = minako, gui = "bold" }),
		sym("@comment.note")({ fg = ami, gui = "bold" }),

		-- markup (markdown, rst, etc.)
		sym("@markup.raw")({ fg = makoto }),
		sym("@markup.raw.block")({ fg = makoto }),
		sym("@markup.link")({ fg = ami, gui = "underline" }),
		sym("@markup.link.url")({ fg = ami, gui = "underline,italic" }),
		sym("@markup.link.label")({ fg = hotaru }),
		sym("@markup.list")({ fg = minako }),
		sym("@markup.heading")({ fg = usagi, gui = "bold" }),
		sym("@markup.heading.1")({ bg = usagi.darken(70).desaturate(70), fg = usagi, gui = "bold" }),
		sym("@markup.heading.2")({ bg = ami.darken(70).desaturate(70), fg = ami, gui = "bold" }),
		sym("@markup.heading.3")({ bg = rei.darken(70).desaturate(70), fg = rei, gui = "bold" }),
		sym("@markup.heading.4")({ bg = makoto.darken(70).desaturate(70), fg = makoto, gui = "bold" }),
		sym("@markup.heading.5")({ bg = minako.darken(70).desaturate(70), fg = minako, gui = "bold" }),
		sym("@markup.heading.6")({ bg = hotaru.darken(70).desaturate(70), fg = hotaru, gui = "bold" }),
		sym("@markup.strong")({ gui = "bold" }),
		sym("@markup.italic")({ gui = "italic" }),
		sym("@markup.strikethrough")({ gui = "strikethrough", fg = muted }),
		sym("@markup.quote")({ fg = faint, gui = "italic" }),

		-- misc TS
		sym("@operator")({ Operator }),
		sym("@attribute")({ fg = minako }),
		sym("@attribute.builtin")({ fg = minako, gui = "bold_italic" }),
		sym("@property")({ fg = hotaru, gui = "italic" }), -- would love to change this
		sym("@tag")({ fg = ami }),
		sym("@tag.builtin")({ fg = ami, gui = "bold_italic" }),
		sym("@tag.attribute")({ fg = minako }),
		sym("@tag.delimiter")({ fg = muted }),

		sym("@diff.plus")({ fg = makoto }),
		sym("@diff.minus")({ fg = rei }),
		sym("@diff.delta")({ fg = minako }),

		-- LSP semantic tokens (0.9+)
		sym("@lsp.type.class")({ Type }),
		sym("@lsp.type.decorator")({ fg = minako }),
		sym("@lsp.type.enum")({ Type }),
		sym("@lsp.type.enumMember")({ Constant }),
		sym("@lsp.type.function")({ Function }),
		sym("@lsp.type.interface")({ Typedef }),
		sym("@lsp.type.macro")({ Macro }),
		sym("@lsp.type.method")({ Function }),
		sym("@lsp.type.namespace")({ fg = text, gui = "italic" }),
		sym("@lsp.type.parameter")({ fg = usagi, gui = "italic" }),
		sym("@lsp.type.property")({ fg = text }),
		sym("@lsp.type.struct")({ Structure }),
		sym("@lsp.type.type")({ Type }),
		sym("@lsp.type.typeParameter")({ Typedef }),
		sym("@lsp.type.variable")({ fg = text }),
		sym("@lsp.type.keyword")({ Keyword }),
		sym("@lsp.type.comment")({ Comment }),
		sym("@lsp.type.string")({ String }),
		sym("@lsp.type.number")({ Number }),
		sym("@lsp.type.operator")({ Operator }),

		sym("@lsp.mod.deprecated")({ gui = "strikethrough", fg = muted }),
		sym("@lsp.mod.readonly")({ gui = "italic" }),
		sym("@lsp.mod.defaultLibrary")({ gui = "italic" }),

		-- markdown
		markdownH1({ fg = usagi, gui = "bold" }),
		markdownH2({ fg = ami, gui = "bold" }),
		markdownH3({ fg = rei, gui = "bold" }),
		markdownH4({ fg = makoto, gui = "bold" }),
		markdownH5({ fg = minako, gui = "bold" }),
		markdownH6({ fg = hotaru, gui = "bold" }),
		markdownH1Delimiter({ markdownH1 }),
		markdownH2Delimiter({ markdownH2 }),
		markdownH3Delimiter({ markdownH3 }),
		markdownH4Delimiter({ markdownH4 }),
		markdownH5Delimiter({ markdownH5 }),
		markdownH6Delimiter({ markdownH6 }),

		-- plugins
		GitSignsAdd({ sym("@diff.plus") }),
		GitSignsChange({ sym("@diff.delta") }),
		GitSignsDelete({ sym("@diff.minus") }),

		RenderMarkdownH1Bg({ bg = usagi.darken(70).desaturate(70), fg = usagi, gui = "bold" }),
		RenderMarkdownH2Bg({ bg = ami.darken(70).desaturate(70), fg = ami, gui = "bold" }),
		RenderMarkdownH3Bg({ bg = rei.darken(70).desaturate(70), fg = rei, gui = "bold" }),
		RenderMarkdownH4Bg({ bg = makoto.darken(70).desaturate(70), fg = makoto, gui = "bold" }),
		RenderMarkdownH5Bg({ bg = minako.darken(70).desaturate(70), fg = minako, gui = "bold" }),
		RenderMarkdownH6Bg({ bg = hotaru.darken(70).desaturate(70), fg = hotaru, gui = "bold" }),

		MiniDiffSignAdd({ sym("@diff.plus"), gui = "italic" }),
		MiniDiffSignChange({ sym("@diff.delta"), gui = "italic" }),
		MiniDiffSignDelete({ sym("@diff.minus"), gui = "italic" }),
		MiniStatuslineModeNormal({ bg = high, fg = text, gui = "bold" }),
		MiniStatuslineModeInsert({ bg = text, fg = base, gui = "bold" }),
		MiniStatuslineModeVisual({ bg = hotaru, fg = base, gui = "bold" }),
		MiniStatuslineModeReplace({ bg = rei, fg = base, gui = "bold" }),
		MiniStatuslineModeCommand({ bg = usagi, fg = base, gui = "bold" }),
		MiniStatuslineModeOther({ bg = makoto, fg = base, gui = "bold" }),
		MiniStatuslineDevinfo({ bg = overlay, fg = text }),
		MiniStatuslineFilename({ bg = surface, fg = faint }),
		MiniStatuslineFileinfo({ MiniStatuslineDevinfo }),
		MiniStatuslineInactive({ bg = base, fg = muted }),
		MiniTablineCurrent({ TabLineSel }),
		MiniTablineVisible({ fg = minako, bg = surface }),
		MiniTablineHidden({ TabLine }),

		TroubleIndent({ bg = surface, fg = faint }),
		TroublePos({ bg = surface, fg = faint }),
	}
end)

return theme

-- vi:nowrap
