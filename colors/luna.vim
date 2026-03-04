" luna v0.2.1 by sailorfe
" built 2026-03-04
" https://codeberg.org/sailorfe/luna.nvim

hi clear
if has('termguicolors')
  set termguicolors
endif

let g:colors_name='luna'
set background=dark

highlight! link htmlLink String
highlight! link mkdLink String
highlight! link mkdURL Identifier
highlight SpellBad gui=undercurl guibg=NONE
highlight Error guibg=NONE
highlight! link Title Normal
highlight mkdHeading guibg=NONE gui=bold

highlight Normal guifg=#EAD9F2 guibg=#271B2D guisp=NONE gui=NONE
highlight ColorColumn guifg=NONE guibg=#372640 guisp=NONE gui=NONE
highlight Comment guifg=#B99FC6 guibg=NONE guisp=NONE gui=italic
highlight Conceal guifg=#6B5775 guibg=NONE guisp=NONE gui=NONE
highlight Constant guifg=#F0D175 guibg=NONE guisp=NONE gui=NONE
highlight! link Boolean Constant
highlight! link Character Constant
highlight! link Float Constant
highlight! link Number Constant
highlight! link String Constant
highlight CurSearch guifg=#271B2D guibg=#F0D175 guisp=NONE gui=NONE
highlight! link IncSearch CurSearch
highlight Cursor guifg=#271B2D guibg=#EAD9F2 guisp=NONE gui=NONE
highlight! link CursorIM Cursor
highlight! link lCursor Cursor
highlight CursorColumn guifg=NONE guibg=#483253 guisp=NONE gui=NONE
highlight CursorLine guifg=NONE guibg=#483253 guisp=NONE gui=NONE
highlight CursorLineNr guifg=#EAD9F2 guibg=NONE guisp=NONE gui=bold
highlight Delimiter guifg=#EAD9F2 guibg=NONE guisp=NONE gui=NONE
highlight DiagnosticDeprecated guifg=#6B5775 guibg=NONE guisp=NONE
highlight DiagnosticError guifg=#F07575 guibg=NONE guisp=NONE gui=NONE
highlight! link DiagnosticFloatingError DiagnosticError
highlight! link DiagnosticSignError DiagnosticError
highlight DiagnosticHint guifg=#B27DE8 guibg=NONE guisp=NONE gui=NONE
highlight! link DiagnosticFloatingHint DiagnosticHint
highlight! link DiagnosticSignHint DiagnosticHint
highlight DiagnosticInfo guifg=#7DB2E8 guibg=NONE guisp=NONE gui=NONE
highlight! link DiagnosticFloatingInfo DiagnosticInfo
highlight! link DiagnosticSignInfo DiagnosticInfo
highlight DiagnosticOk guifg=#D1F075 guibg=NONE guisp=NONE gui=NONE
highlight! link DiagnosticFloatingOk DiagnosticOk
highlight! link DiagnosticSignOk DiagnosticOk
highlight DiagnosticUnderlineError guifg=#F07575 guibg=NONE guisp=NONE gui=underline
highlight DiagnosticUnderlineHint guifg=#B27DE8 guibg=NONE guisp=NONE gui=underline
highlight DiagnosticUnderlineInfo guifg=#7DB2E8 guibg=NONE guisp=NONE gui=underline
highlight DiagnosticUnderlineOk guifg=#D1F075 guibg=NONE guisp=NONE gui=underline
highlight DiagnosticUnderlineWarn guifg=#F0D175 guibg=NONE guisp=NONE gui=underline
highlight DiagnosticVirtualTextError guifg=#F07575 guibg=NONE guisp=NONE gui=italic
highlight DiagnosticVirtualTextHint guifg=#B27DE8 guibg=NONE guisp=NONE gui=italic
highlight DiagnosticVirtualTextInfo guifg=#7DB2E8 guibg=NONE guisp=NONE gui=italic
highlight DiagnosticVirtualTextOk guifg=#D1F075 guibg=NONE guisp=NONE gui=italic
highlight DiagnosticVirtualTextWarn guifg=#F0D175 guibg=NONE guisp=NONE gui=italic
highlight DiagnosticWarn guifg=#F0D175 guibg=NONE guisp=NONE gui=NONE
highlight! link DiagnosticFloatingWarn DiagnosticWarn
highlight! link DiagnosticSignWarn DiagnosticWarn
highlight DiffAdd guifg=#271B2D guibg=#D1F075 guisp=NONE gui=NONE
highlight DiffChange guifg=#271B2D guibg=#F0D175 guisp=NONE gui=NONE
highlight DiffDelete guifg=#F07575 guibg=NONE guisp=NONE gui=bold
highlight DiffText guifg=#271B2D guibg=#7DB2E8 guisp=NONE gui=NONE
highlight Directory guifg=#7DB2E8 guibg=NONE guisp=NONE gui=NONE
highlight EndOfBuffer guifg=#6B5775 guibg=NONE guisp=NONE gui=NONE
highlight Error guifg=#271B2D guibg=#F07575 guisp=NONE gui=NONE
highlight ErrorMsg guifg=#F07575 guibg=NONE guisp=NONE gui=bold
highlight FloatBorder guifg=#6B5775 guibg=#372640 guisp=NONE gui=NONE
highlight! link FloatFooter FloatBorder
highlight FloatTitle guifg=#B27DE8 guibg=#372640 guisp=NONE gui=bold
highlight FoldColumn guifg=#7A5C8A guibg=#372640 guisp=NONE gui=NONE
highlight Folded guifg=#B99FC6 guibg=#291D2F guisp=NONE gui=NONE
highlight Function guifg=#B27DE8 guibg=NONE guisp=NONE gui=NONE
highlight Identifier guifg=#E87DB3 guibg=NONE guisp=NONE gui=NONE
highlight Ignore guifg=#6B5775 guibg=NONE guisp=NONE gui=NONE
highlight LineNr guifg=#6B5775 guibg=NONE guisp=NONE gui=NONE
highlight! link LineNrAbove LineNr
highlight! link LineNrBelow LineNr
highlight MatchParen guifg=NONE guibg=#7A5C8A guisp=NONE gui=bold
highlight MiniDiffSignAdd guifg=#D1F075 guibg=NONE guisp=NONE gui=italic
highlight MiniDiffSignChange guifg=#F0D175 guibg=NONE guisp=NONE gui=italic
highlight MiniDiffSignDelete guifg=#F07575 guibg=NONE guisp=NONE gui=italic
highlight MiniStatuslineDevinfo guifg=#EAD9F2 guibg=#483253 guisp=NONE gui=NONE
highlight! link MiniStatuslineFileinfo MiniStatuslineDevinfo
highlight MiniStatuslineFilename guifg=#B99FC6 guibg=#372640 guisp=NONE gui=NONE
highlight MiniStatuslineInactive guifg=#6B5775 guibg=#271B2D guisp=NONE gui=NONE
highlight MiniStatuslineModeCommand guifg=#271B2D guibg=#E87DB3 guisp=NONE gui=bold
highlight MiniStatuslineModeInsert guifg=#271B2D guibg=#EAD9F2 guisp=NONE gui=bold
highlight MiniStatuslineModeNormal guifg=#EAD9F2 guibg=#7A5C8A guisp=NONE gui=bold
highlight MiniStatuslineModeOther guifg=#271B2D guibg=#D1F075 guisp=NONE gui=bold
highlight MiniStatuslineModeReplace guifg=#271B2D guibg=#F07575 guisp=NONE gui=bold
highlight MiniStatuslineModeVisual guifg=#271B2D guibg=#B27DE8 guisp=NONE gui=bold
highlight MiniTablineVisible guifg=#F0D175 guibg=#372640 guisp=NONE gui=NONE
highlight ModeMsg guifg=#EAD9F2 guibg=NONE guisp=NONE gui=bold
highlight MoreMsg guifg=#D1F075 guibg=NONE guisp=NONE gui=NONE
highlight MsgArea guifg=#EAD9F2 guibg=NONE guisp=NONE gui=NONE
highlight MsgSeparator guifg=#483253 guibg=NONE guisp=NONE gui=NONE
highlight NonText guifg=#6B5775 guibg=NONE guisp=NONE gui=NONE
highlight NormalFloat guifg=#EAD9F2 guibg=#372640 guisp=NONE gui=NONE
highlight NormalNC guifg=#B99FC6 guibg=#271B2D guisp=NONE gui=NONE
highlight Operator guifg=#EAD9F2 guibg=NONE guisp=NONE gui=NONE
highlight Pmenu guifg=#EAD9F2 guibg=#372640 guisp=NONE gui=NONE
highlight PmenuExtra guifg=#6B5775 guibg=#372640 guisp=NONE gui=NONE
highlight PmenuExtraSel guifg=#B99FC6 guibg=#483253 guisp=NONE gui=NONE
highlight PmenuKind guifg=#E87DB3 guibg=#372640 guisp=NONE gui=NONE
highlight PmenuKindSel guifg=#E87DB3 guibg=#483253 guisp=NONE gui=bold
highlight PmenuMatch guifg=#B27DE8 guibg=NONE guisp=NONE gui=bold
highlight PmenuMatchSel guifg=#B27DE8 guibg=NONE guisp=NONE gui=bold,underline
highlight PmenuSbar guifg=NONE guibg=#483253 guisp=NONE gui=NONE
highlight PmenuSel guifg=#B27DE8 guibg=#483253 guisp=NONE gui=bold
highlight PmenuThumb guifg=NONE guibg=#7A5C8A guisp=NONE gui=NONE
highlight PreProc guifg=#7DB2E8 guibg=NONE guisp=NONE gui=NONE
highlight! link Define PreProc
highlight! link Include PreProc
highlight! link Macro PreProc
highlight! link PreCondit PreProc
highlight Question guifg=#7DB2E8 guibg=NONE guisp=NONE gui=NONE
highlight QuickFixLine guifg=NONE guibg=#483253 guisp=NONE gui=bold
highlight RenderMarkdownH1Bg guifg=#E87DB3 guibg=#412A36 guisp=NONE gui=bold
highlight RenderMarkdownH2Bg guifg=#7DB2E8 guibg=#2A3641 guisp=NONE gui=bold
highlight RenderMarkdownH3Bg guifg=#F07575 guibg=#422929 guisp=NONE gui=bold
highlight RenderMarkdownH4Bg guifg=#D1F075 guibg=#3C4229 guisp=NONE gui=bold
highlight RenderMarkdownH5Bg guifg=#F0D175 guibg=#423C29 guisp=NONE gui=bold
highlight RenderMarkdownH6Bg guifg=#B27DE8 guibg=#362A41 guisp=NONE gui=bold
highlight Search guifg=#F0D175 guibg=#523C5D guisp=NONE gui=NONE
highlight SignColumn guifg=NONE guibg=#271B2D guisp=NONE gui=NONE
highlight Special guifg=#E87DB3 guibg=NONE guisp=NONE gui=NONE
highlight! link Debug Special
highlight! link SpecialChar Special
highlight! link Tag Special
highlight SpecialComment guifg=#B99FC6 guibg=NONE guisp=NONE gui=bold
highlight SpecialKey guifg=#6B5775 guibg=NONE guisp=NONE gui=NONE
highlight SpellBad guifg=#F07575 guibg=NONE guisp=NONE gui=underline
highlight SpellCap guifg=#F0D175 guibg=NONE guisp=NONE gui=underline
highlight SpellLocal guifg=#D1F075 guibg=NONE guisp=NONE gui=underline
highlight SpellRare guifg=#7DB2E8 guibg=NONE guisp=NONE gui=underline
highlight Statement guifg=#7DB2E8 guibg=NONE guisp=NONE gui=bold
highlight! link Conditional Statement
highlight! link Exception Statement
highlight! link Keyword Statement
highlight! link Label Statement
highlight! link Repeat Statement
highlight StatusLine guifg=#EAD9F2 guibg=#483253 guisp=NONE gui=NONE
highlight StatusLineNC guifg=#6B5775 guibg=#372640 guisp=NONE gui=NONE
highlight Substitute guifg=#271B2D guibg=#7DB2E8 guisp=NONE gui=NONE
highlight TabLine guifg=#6B5775 guibg=#372640 guisp=NONE gui=NONE
highlight! link MiniTablineHidden TabLine
highlight TabLineFill guifg=NONE guibg=#271B2D guisp=NONE gui=NONE
highlight TabLineSel guifg=#B27DE8 guibg=#483253 guisp=NONE gui=bold
highlight! link MiniTablineCurrent TabLineSel
highlight TermCursor guifg=#271B2D guibg=#B27DE8 guisp=NONE gui=NONE
highlight TermCursorNC guifg=#271B2D guibg=#B99FC6 guisp=NONE gui=NONE
highlight Title guifg=#B27DE8 guibg=NONE guisp=NONE gui=bold
highlight Todo guifg=#F0D175 guibg=NONE guisp=NONE gui=bold
highlight TroubleIndent guifg=#B99FC6 guibg=#372640 guisp=NONE gui=NONE
highlight TroublePos guifg=#B99FC6 guibg=#372640 guisp=NONE gui=NONE
highlight Type guifg=#D1F075 guibg=NONE guisp=NONE gui=NONE
highlight! link StorageClass Type
highlight! link Structure Type
highlight Typedef guifg=#D1F075 guibg=NONE guisp=NONE gui=italic
highlight Underlined guifg=NONE guibg=NONE guisp=NONE gui=underline
highlight VertSplit guifg=#372640 guibg=NONE guisp=NONE gui=NONE
highlight Visual guifg=NONE guibg=#7A5C8A guisp=NONE gui=NONE
highlight! link VisualNOS Visual
highlight WarningMsg guifg=#F0D175 guibg=NONE guisp=NONE gui=NONE
highlight Whitespace guifg=#483253 guibg=NONE guisp=NONE gui=NONE
highlight WildMenu guifg=#271B2D guibg=#EAD9F2 guisp=NONE gui=NONE
highlight WinBar guifg=#B99FC6 guibg=#523C5D guisp=NONE gui=NONE
highlight WinBarNC guifg=#6B5775 guibg=#523C5D guisp=NONE gui=NONE
highlight WinSeparator guifg=#372640 guibg=NONE guisp=NONE gui=NONE
highlight markdownH1 guifg=#E87DB3 guibg=NONE guisp=NONE gui=bold
highlight! link markdownH1Delimiter markdownH1
highlight markdownH2 guifg=#7DB2E8 guibg=NONE guisp=NONE gui=bold
highlight! link markdownH2Delimiter markdownH2
highlight markdownH3 guifg=#F07575 guibg=NONE guisp=NONE gui=bold
highlight! link markdownH3Delimiter markdownH3
highlight markdownH4 guifg=#D1F075 guibg=NONE guisp=NONE gui=bold
highlight! link markdownH4Delimiter markdownH4
highlight markdownH5 guifg=#F0D175 guibg=NONE guisp=NONE gui=bold
highlight! link markdownH5Delimiter markdownH5
highlight markdownH6 guifg=#B27DE8 guibg=NONE guisp=NONE gui=bold
highlight! link markdownH6Delimiter markdownH6
