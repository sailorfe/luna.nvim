local bssm = require("luna.miau").get()
---@diagnostic disable: undefined-global
local lush = require("lush")
local theme = lush(function(injected_functions)
	local sym = injected_functions.sym
	return {

		-- ui
		Normal({ bg = bssm.base, fg = bssm.text }),
		NormalFloat({ bg = bssm.surface, fg = bssm.text }),
		NormalNC({ bg = bssm.base, fg = bssm.faint }),

		FloatBorder({ bg = bssm.surface, fg = bssm.muted }),
		FloatTitle({ bg = bssm.surface, fg = bssm.hotaru, gui = "bold" }),
		FloatFooter({ FloatBorder }),

		ColorColumn({ bg = bssm.surface }),
		Conceal({ fg = bssm.muted }),
		CursorLine({ bg = bssm.overlay }),
		CursorColumn({ bg = bssm.overlay }),
		CursorLineNr({ fg = bssm.text, gui = "bold" }),
		LineNr({ fg = bssm.muted }),
		LineNrAbove({ LineNr }),
		LineNrBelow({ LineNr }),

		SignColumn({ bg = bssm.base }),
		FoldColumn({ fg = bssm.high, bg = bssm.surface }),
		Folded({ bg = bssm.low, fg = bssm.faint }),

		StatusLine({ bg = bssm.overlay, fg = bssm.text }),
		StatusLineNC({ bg = bssm.surface, fg = bssm.muted }),
		WinBar({ bg = bssm.med, fg = bssm.faint }),
		WinBarNC({ bg = bssm.med, fg = bssm.muted }),
		WinSeparator({ fg = bssm.surface }), -- 0.9+
		VertSplit({ fg = bssm.surface }), -- for compatibility

		TabLine({ bg = bssm.surface, fg = bssm.muted }),
		TabLineFill({ bg = bssm.base }),
		TabLineSel({ bg = bssm.overlay, fg = bssm.hotaru, gui = "bold" }),

		Pmenu({ bg = bssm.surface, fg = bssm.text }),
		PmenuSel({ bg = bssm.overlay, fg = bssm.hotaru, gui = "bold" }),
		PmenuKind({ bg = bssm.surface, fg = bssm.usagi }),
		PmenuKindSel({ bg = bssm.overlay, fg = bssm.usagi, gui = "bold" }),
		PmenuExtra({ bg = bssm.surface, fg = bssm.muted }),
		PmenuExtraSel({ bg = bssm.overlay, fg = bssm.faint }),
		PmenuSbar({ bg = bssm.overlay }),
		PmenuThumb({ bg = bssm.high }),
		PmenuMatch({ fg = bssm.hotaru, gui = "bold" }), -- 0.11 fuzzy match
		PmenuMatchSel({ fg = bssm.hotaru, gui = "bold_underline" }),

		-- 0.11: popup/window title when using noice / native cmdline
		MsgArea({ fg = bssm.text }),
		MsgSeparator({ fg = bssm.overlay }),
		ModeMsg({ fg = bssm.text, gui = "bold" }),
		MoreMsg({ fg = bssm.makoto }),
		Question({ fg = bssm.ami }),
		WarningMsg({ fg = bssm.minako }),
		ErrorMsg({ fg = bssm.rei, gui = "bold" }),

		Cursor({ bg = bssm.text, fg = bssm.base }),
		lCursor({ Cursor }),
		CursorIM({ Cursor }),
		TermCursor({ bg = bssm.hotaru, fg = bssm.base }),
		TermCursorNC({ bg = bssm.faint, fg = bssm.base }),

		Visual({ bg = bssm.high }),
		VisualNOS({ Visual }),
		CurSearch({ bg = bssm.minako, fg = bssm.base }),
		IncSearch({ CurSearch }),
		Search({ bg = bssm.med, fg = bssm.minako }),
		Substitute({ bg = bssm.ami, fg = bssm.base }),

		MatchParen({ bg = bssm.high, gui = "bold" }),

		NonText({ fg = bssm.muted }),
		Whitespace({ fg = bssm.overlay }),
		SpecialKey({ fg = bssm.muted }),
		EndOfBuffer({ fg = bssm.muted }),

		Directory({ fg = bssm.ami }),
		Title({ fg = bssm.hotaru, gui = "bold" }),
		WildMenu({ bg = bssm.text, fg = bssm.base }),

		QuickFixLine({ bg = bssm.overlay, gui = "bold" }),

		-- diffs
		DiffAdd({ bg = bssm.makoto, fg = bssm.base }),
		DiffChange({ bg = bssm.minako, fg = bssm.base }),
		DiffDelete({ fg = bssm.rei, gui = "bold" }),
		DiffText({ bg = bssm.ami, fg = bssm.base }),

		-- spell
		SpellBad({ fg = bssm.rei, gui = "undercurl" }),
		SpellCap({ fg = bssm.minako, gui = "undercurl" }),
		SpellLocal({ fg = bssm.makoto, gui = "undercurl" }),
		SpellRare({ fg = bssm.ami, gui = "undercurl" }),

		-- misc
		Underlined({ gui = "underline" }),
		Ignore({ fg = bssm.muted }),
		Error({ bg = bssm.rei, fg = bssm.base }),
		Todo({ fg = bssm.minako, gui = "bold" }),

		-- traditional syntax
		Comment({ fg = bssm.faint, gui = "italic" }),

		Constant({ fg = bssm.minako }),
		String({ Constant }), -- maybe change
		Character({ Constant }),
		Number({ Constant }),
		Boolean({ Constant }),
		Float({ Constant }),

		Identifier({ fg = bssm.usagi }),
		Function({ fg = bssm.hotaru }),

		Statement({ fg = bssm.ami, gui = "bold" }),
		Conditional({ Statement }),
		Repeat({ Statement }),
		Label({ Statement }),
		Operator({ fg = bssm.text }),
		Keyword({ Statement }), -- maybe change
		Exception({ Statement }),

		PreProc({ fg = bssm.ami }),
		Include({ PreProc }),
		Define({ PreProc }),
		Macro({ PreProc }),
		PreCondit({ PreProc }),

		Type({ fg = bssm.makoto }),
		StorageClass({ Type }),
		Structure({ Type }),
		Typedef({ fg = bssm.makoto, gui = "italic" }),

		Special({ fg = bssm.usagi }),
		SpecialChar({ Special }),
		Tag({ Special }),
		Delimiter({ fg = bssm.text }),
		SpecialComment({ fg = bssm.faint, gui = "bold" }),
		Debug({ Special }),

		-- diagonistics
		DiagnosticError({ fg = bssm.rei }),
		DiagnosticWarn({ fg = bssm.minako }),
		DiagnosticInfo({ fg = bssm.ami }),
		DiagnosticHint({ fg = bssm.hotaru }),
		DiagnosticOk({ fg = bssm.makoto }),

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
		DiagnosticDeprecated({ gui = "strikethrough", fg = bssm.muted }),

		-- treesitter (0.9+)

		-- identifiers
		sym("@variable")({ fg = bssm.text, gui = "italic" }),
		sym("@variable.builtin")({ fg = bssm.hotaru, gui = "bold_italic" }),
		sym("@variable.parameter")({ Type }), -- (injected_functions)
		sym("@variable.member")({ fg = bssm.text }), -- struct fields, object keys

		sym("@constant")({ Constant }),
		sym("@constant.builtin")({ fg = bssm.minako, gui = "bold_italic" }),
		sym("@constant.macro")({ Define }),

		sym("@module")({ fg = bssm.minako }),
		sym("@module.builtin")({ fg = bssm.minako, gui = "bold_italic" }),
		sym("@label")({ fg = bssm.ami }),

		-- literals
		sym("@string")({ String }),
		sym("@string.escape")({ fg = bssm.hotaru }),
		sym("@string.special")({ fg = bssm.hotaru }),
		sym("@string.regexp")({ fg = bssm.minako }),
		sym("@string.special.url")({ fg = bssm.ami, gui = "underline" }),

		sym("@character")({ Character }),
		sym("@character.special")({ SpecialChar }),
		sym("@boolean")({ Boolean }),
		sym("@number")({ Number }),
		sym("@number.float")({ Float }),

		-- types
		sym("@type")({ Type }),
		sym("@type.builtin")({ fg = bssm.makoto, gui = "bold_italic" }),
		sym("@type.definition")({ Typedef }),

		-- functions
		sym("@function")({ Function }),
		sym("@function.builtin")({ fg = bssm.usagi, gui = "bold_italic" }),
		sym("@function.macro")({ Macro }),
		sym("@function.method")({ Function }),
		sym("@constructor")({ fg = bssm.hotaru }),

		-- keywords
		sym("@keyword")({ Keyword }),
		sym("@keyword.function")({ fg = bssm.ami, gui = "italic" }),
		sym("@keyword.operator")({ fg = bssm.ami }),
		sym("@keyword.import")({ Include }),
		sym("@keyword.repeat")({ Repeat }),
		sym("@keyword.return")({ fg = bssm.rei, gui = "italic" }),
		sym("@keyword.exception")({ Exception }),
		sym("@keyword.conditional")({ Conditional }),
		sym("@keyword.directive")({ PreProc }),

		-- punctuation
		sym("@punctuation.delimiter")({ fg = bssm.muted }),
		sym("@punctuation.bracket")({ fg = bssm.text }),
		sym("@punctuation.special")({ fg = bssm.hotaru }),

		-- comments
		sym("@comment")({ Comment }),
		sym("@comment.documentation")({ fg = bssm.faint, gui = "italic" }),
		sym("@comment.error")({ fg = bssm.rei, gui = "bold" }),
		sym("@comment.warning")({ fg = bssm.minako, gui = "bold" }),
		sym("@comment.todo")({ fg = bssm.minako, gui = "bold" }),
		sym("@comment.note")({ fg = bssm.ami, gui = "bold" }),

		-- markup (markdown, rst, etc.)
		sym("@markup.raw")({ fg = bssm.makoto }),
		sym("@markup.raw.block")({ fg = bssm.makoto }),
		sym("@markup.link")({ fg = bssm.ami, gui = "underline" }),
		sym("@markup.link.url")({ fg = bssm.ami, gui = "underline,italic" }),
		sym("@markup.link.label")({ fg = bssm.hotaru }),
		sym("@markup.list")({ fg = bssm.minako }),
		sym("@markup.heading")({ fg = bssm.usagi, gui = "bold" }),
		sym("@markup.heading.1")({ bg = bssm.usagi.darken(70).desaturate(70), fg = bssm.usagi, gui = "bold" }),
		sym("@markup.heading.2")({ bg = bssm.ami.darken(70).desaturate(70), fg = bssm.ami, gui = "bold" }),
		sym("@markup.heading.3")({ bg = bssm.rei.darken(70).desaturate(70), fg = bssm.rei, gui = "bold" }),
		sym("@markup.heading.4")({ bg = bssm.makoto.darken(70).desaturate(70), fg = bssm.makoto, gui = "bold" }),
		sym("@markup.heading.5")({ bg = bssm.minako.darken(70).desaturate(70), fg = bssm.minako, gui = "bold" }),
		sym("@markup.heading.6")({ bg = bssm.hotaru.darken(70).desaturate(70), fg = bssm.hotaru, gui = "bold" }),
		sym("@markup.strong")({ gui = "bold" }),
		sym("@markup.italic")({ gui = "italic" }),
		sym("@markup.strikethrough")({ gui = "strikethrough", fg = bssm.muted }),
		sym("@markup.quote")({ fg = bssm.faint, gui = "italic" }),

		-- misc TS
		sym("@operator")({ Operator }),
		sym("@attribute")({ fg = bssm.minako }),
		sym("@attribute.builtin")({ fg = bssm.minako, gui = "bold_italic" }),
		sym("@property")({ fg = bssm.hotaru, gui = "italic" }), -- would love to change this
		sym("@tag")({ fg = bssm.ami }),
		sym("@tag.builtin")({ fg = bssm.ami, gui = "bold_italic" }),
		sym("@tag.attribute")({ fg = bssm.minako }),
		sym("@tag.delimiter")({ fg = bssm.muted }),

		sym("@diff.plus")({ fg = bssm.makoto }),
		sym("@diff.minus")({ fg = bssm.rei }),
		sym("@diff.delta")({ fg = bssm.minako }),

		-- LSP semantic tokens (0.9+)
		sym("@lsp.type.class")({ Type }),
		sym("@lsp.type.decorator")({ fg = bssm.minako }),
		sym("@lsp.type.enum")({ Type }),
		sym("@lsp.type.enumMember")({ Constant }),
		sym("@lsp.type.function")({ Function }),
		sym("@lsp.type.interface")({ Typedef }),
		sym("@lsp.type.macro")({ Macro }),
		sym("@lsp.type.method")({ Function }),
		sym("@lsp.type.namespace")({ fg = bssm.text, gui = "italic" }),
		sym("@lsp.type.parameter")({ fg = bssm.usagi, gui = "italic" }),
		sym("@lsp.type.property")({ fg = bssm.text }),
		sym("@lsp.type.struct")({ Structure }),
		sym("@lsp.type.type")({ Type }),
		sym("@lsp.type.typeParameter")({ Typedef }),
		sym("@lsp.type.variable")({ fg = bssm.text }),
		sym("@lsp.type.keyword")({ Keyword }),
		sym("@lsp.type.comment")({ Comment }),
		sym("@lsp.type.string")({ String }),
		sym("@lsp.type.number")({ Number }),
		sym("@lsp.type.operator")({ Operator }),

		sym("@lsp.mod.deprecated")({ gui = "strikethrough", fg = bssm.muted }),
		sym("@lsp.mod.readonly")({ gui = "italic" }),
		sym("@lsp.mod.defaultLibrary")({ gui = "italic" }),

		-- markdown
		markdownH1({ fg = bssm.usagi, gui = "bold" }),
		markdownH2({ fg = bssm.ami, gui = "bold" }),
		markdownH3({ fg = bssm.rei, gui = "bold" }),
		markdownH4({ fg = bssm.makoto, gui = "bold" }),
		markdownH5({ fg = bssm.minako, gui = "bold" }),
		markdownH6({ fg = bssm.hotaru, gui = "bold" }),
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

		RenderMarkdownH1Bg({ bg = bssm.usagi.darken(70).desaturate(70), fg = bssm.usagi, gui = "bold" }),
		RenderMarkdownH2Bg({ bg = bssm.ami.darken(70).desaturate(70), fg = bssm.ami, gui = "bold" }),
		RenderMarkdownH3Bg({ bg = bssm.rei.darken(70).desaturate(70), fg = bssm.rei, gui = "bold" }),
		RenderMarkdownH4Bg({ bg = bssm.makoto.darken(70).desaturate(70), fg = bssm.makoto, gui = "bold" }),
		RenderMarkdownH5Bg({ bg = bssm.minako.darken(70).desaturate(70), fg = bssm.minako, gui = "bold" }),
		RenderMarkdownH6Bg({ bg = bssm.hotaru.darken(70).desaturate(70), fg = bssm.hotaru, gui = "bold" }),

		MiniDiffSignAdd({ sym("@diff.plus"), gui = "italic" }),
		MiniDiffSignChange({ sym("@diff.delta"), gui = "italic" }),
		MiniDiffSignDelete({ sym("@diff.minus"), gui = "italic" }),
		MiniStatuslineModeNormal({ bg = bssm.high, fg = bssm.text, gui = "bold" }),
		MiniStatuslineModeInsert({ bg = bssm.text, fg = bssm.base, gui = "bold" }),
		MiniStatuslineModeVisual({ bg = bssm.hotaru, fg = bssm.base, gui = "bold" }),
		MiniStatuslineModeReplace({ bg = bssm.rei, fg = bssm.base, gui = "bold" }),
		MiniStatuslineModeCommand({ bg = bssm.usagi, fg = bssm.base, gui = "bold" }),
		MiniStatuslineModeOther({ bg = bssm.makoto, fg = bssm.base, gui = "bold" }),
		MiniStatuslineDevinfo({ bg = bssm.overlay, fg = bssm.text }),
		MiniStatuslineFilename({ bg = bssm.surface, fg = bssm.faint }),
		MiniStatuslineFileinfo({ MiniStatuslineDevinfo }),
		MiniStatuslineInactive({ bg = bssm.base, fg = bssm.muted }),
		MiniTablineCurrent({ TabLineSel }),
		MiniTablineVisible({ fg = bssm.minako, bg = bssm.surface }),
		MiniTablineHidden({ TabLine }),

		TroubleIndent({ bg = bssm.surface, fg = bssm.faint }),
		TroublePos({ bg = bssm.surface, fg = bssm.faint }),
	}
end)
---@disagnostic disable
return theme
