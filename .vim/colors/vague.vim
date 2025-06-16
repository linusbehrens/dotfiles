hi clear
if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "vague"

" Basic colors
"hi Normal        guifg=#cdcdcd guibg=#141415
hi Normal        guifg=#cdcdcd guibg=#000000
hi Comment       guifg=#606079 gui=italic
hi Constant      guifg=#aeaed1
hi String        guifg=#e8b589
hi Number        guifg=#e0a363
hi Identifier    guifg=#bb9dbd
hi Function      guifg=#c48282
hi Statement     guifg=#6e94b2
hi Operator      guifg=#90a0b5
hi Type          guifg=#9bb4bc
hi Keyword       guifg=#6e94b2
hi PreProc       guifg=#b4d4cf
hi Special       guifg=#c3c3d5
hi Error         guifg=#d8647e guibg=NONE gui=bold
hi WarningMsg    guifg=#f3be7c
hi HintMsg       guifg=#7e98e8
hi Visual        guibg=#333738
hi Search        guibg=#405065 guifg=NONE
hi LineNr        guifg=#878787
hi VertSplit     guifg=#252530 guibg=#141415
hi StatusLine    guifg=#cdcdcd guibg=#252530
hi Pmenu         guifg=#cdcdcd guibg=#252530
hi PmenuSel      guibg=#405065

" Git diffs (if using a plugin like vim-gitgutter)
hi DiffAdd       guibg=#7fa563
hi DiffChange    guibg=#f3be7c
hi DiffDelete    guibg=#d8647e

