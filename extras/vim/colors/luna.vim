" luna v0.2.4 by sailorfe
" built 2026-08-08
" https://codeberg.org/sailorfe/luna.nvim

" luna.vim -- automatically generated, do not edit by hand.
" Classic Vimscript (no vim9script)

set background=dark
hi clear
if exists('syntax_on')
  syntax reset
endif
let g:colors_name = 'luna'

if exists('+termguicolors')
  set termguicolors
endif

" == ui ===========================

hi Normal       guifg=#EAD9F2 guibg=#271B2D ctermfg=254 ctermbg=235
hi NonText      guifg=#6B5775 ctermfg=242
hi EndOfBuffer  guifg=#6B5775 ctermfg=242
hi SpecialKey   guifg=#E87DB3 ctermfg=175
hi ColorColumn  guibg=#372640 ctermbg=236
hi Cursor       guifg=#271B2D guibg=#F8EBFF ctermfg=235 ctermbg=255
hi CursorLine   guibg=#483253 ctermbg=238 cterm=NONE gui=NONE
hi CursorColumn guibg=#483253 ctermbg=238
hi CursorLineNr guifg=#F8EBFF guibg=#483253 ctermfg=255 ctermbg=238
hi LineNr       guifg=#6B5775 ctermfg=242
hi MatchParen   guifg=#F8EBFF guibg=#483253 gui=bold ctermfg=255 ctermbg=238 cterm=bold
hi SignColumn   guifg=#B99FC6 ctermbg=146 guibg=#483253 ctermbg=238
hi FoldColumn   guifg=#7A5C8A guibg=#291D2F ctermfg=96 ctermbg=235
hi Folded       guifg=#B99FC6 ctermfg=146 guibg=#483253 ctermbg=238
hi Conceal      guifg=#6B5775 ctermbg=242 guibg=#372640 ctermbg=236
hi Visual       guibg=#E87DB3 guifg=#271B2D ctermbg=175 ctermfg=235
hi Search       guifg=#271B2D guibg=#F0D175 ctermfg=235 ctermbg=222
hi IncSearch    guifg=#271B2D guibg=#7DB2E8 ctermfg=235 ctermbg=110
hi QuickFixLine guibg=#483253 ctermbg=238
hi WildMenu     guifg=#271B2D guibg=#EAD9F2 ctermfg=235 ctermbg=254
hi StatusLine       term=bold cterm=bold guifg=#F8EBFF guibg=#372640 ctermfg=255 ctermbg=236
hi StatusLineNC     term=bold cterm=bold guifg=#6B5775 guibg=#271B2D ctermfg=242 ctermbg=235
hi StatusLineTerm   term=bold cterm=bold ctermfg=235 guibg=#D1F075 ctermbg=192
hi StatusLineTermNC term=bold cterm=bold ctermfg=235 guibg=#E3FA9E ctermbg=193
hi VertSplit        guifg=#372640 guibg=#271B2D ctermfg=236 ctermbg=235
hi TabLine          guifg=#6B5775 guibg=#372640 ctermfg=242 ctermbg=236
hi TabLineSel       guifg=#F8EBFF guibg=#483253 ctermfg=255 ctermbg=238
hi ToolbarLine      guibg=#7A5C8A ctermbg=96
hi ToolbarButton    guibg=#B99FC6 ctermbg=146
hi Pmenu        guifg=#EAD9F2 guibg=#372640 ctermfg=254 ctermbg=236
hi PmenuSel     guifg=#271B2D guibg=#7DB2E8 ctermfg=235 ctermbg=110
hi PmenuSbar    guibg=#483253 ctermbg=238
hi PmenuThumb   guibg=#7A5C8A ctermbg=96
hi ErrorMsg     guifg=#F07575 ctermfg=210 guibg=#271B2D ctermfg=235
hi WarningMsg   guifg=#F0D175 ctermfg=222
hi ModeMsg      guifg=#7DB2E8 ctermfg=110
hi MoreMsg      guifg=#E87DB3 ctermfg=175
hi Question     guifg=#7DB2E8 ctermfg=110
hi Directory    guifg=#7DB2E8 ctermfg=110

" == syntax =======================

hi Comment      guifg=#B99FC6 gui=italic ctermfg=146 cterm=italic
hi Constant     guifg=#F0D175 ctermfg=222
hi String       guifg=#D1F075 ctermfg=192
hi Identifier   guifg=#E87DB3 ctermfg=175
hi Function     guifg=#7DB2E8 ctermfg=110
hi Statement    guifg=#B27DE8 gui=bold ctermfg=140 cterm=bold
hi PreProc      guifg=#B27DE8 ctermfg=140
hi Type         guifg=#F0D175 ctermfg=222
hi Special      guifg=#7DB2E8 ctermfg=110
hi Underlined   guifg=#7DB2E8 gui=underline ctermfg=110 cterm=underline
hi Title        guifg=#E87DB3 gui=bold cterm=bold term=bold ctermfg=175
hi Todo         guifg=#271B2D guibg=#F0D175 ctermfg=235 ctermbg=222
hi Error        guifg=#F8EBFF guibg=#F07575 ctermfg=255 ctermbg=210

" == diff =========================

hi DiffAdd      guibg=#D1F075 ctermbg=192 guifg=#271B2D ctermfg=235
hi DiffChange   guibg=#F0D175 ctermbg=222 guifg=#271B2D ctermfg=235
hi DiffDelete   guibg=#F07575 ctermbg=210 guifg=#271B2D ctermfg=235
hi DiffText     guibg=#7DB2E8 ctermbg=110 guifg=#271B2D ctermfg=235

" == spell ========================

hi SpellBad     guifg=#F07575 ctermfg=210 gui=underline
hi SpellCap     guifg=#F0D175 ctermfg=222 gui=underline
hi SpellLocal   guifg=#D1F075 ctermfg=192 gui=underline
hi SpellRare    guifg=#7DB2E8 ctermfg=110 gui=underline

" == term =========================

let g:terminal_ansi_colors = [
      \ '#291D2F', '#F07575', '#D1F075', '#F0D175',
      \ '#7DB2E8', '#B27DE8', '#E87DB3', '#EAD9F2',
      \ '#523C5D', '#FA9E9E', '#E3FA9E', '#FAE39E',
      \ '#A3CCF5', '#CCA3F5', '#F5A3CC', '#F8EBFF'
      \ ]

let g:terminal_color_0  = '#291D2F'
let g:terminal_color_1  = '#F07575'
let g:terminal_color_2  = '#D1F075'
let g:terminal_color_3  = '#F0D175'
let g:terminal_color_4  = '#7DB2E8'
let g:terminal_color_5  = '#B27DE8'
let g:terminal_color_6  = '#E87DB3'
let g:terminal_color_7  = '#EAD9F2'
let g:terminal_color_8  = '#523C5D'
let g:terminal_color_9  = '#FA9E9E'
let g:terminal_color_10 = '#E3FA9E'
let g:terminal_color_11 = '#FAE39E'
let g:terminal_color_12 = '#A3CCF5'
let g:terminal_color_13 = '#CCA3F5'
let g:terminal_color_14 = '#F5A3CC'
let g:terminal_color_15 = '#F8EBFF'
