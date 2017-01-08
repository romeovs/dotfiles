set background=dark
hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "custom"

" COLORS:
" 16   black
" 234  light-gray
" 238  gray
" 240  gray
" 94   brown-orange
" 95   brown-purple


hi Cursor           ctermfg=none    ctermbg=none
hi Normal           ctermfg=none    ctermbg=none    cterm=none
hi NonText          ctermfg=black   ctermbg=16      cterm=none
hi Punctuation      ctermfg=none     ctermbg=none   cterm=none

hi CursorLine       ctermbg=16      cterm=none      ctermfg=none
hi CursorColumn     ctermbg=234     cterm=none
hi MatchParen       ctermbg=43     ctermfg=16

hi Pmenu            ctermfg=none  ctermbg=236 cterm=none
hi PmenuSel         ctermfg=white ctermbg=237 cterm=none
hi PmenuSbar        ctermbg=238
hi PmenuThumb       ctermbg=240

hi SpecialKey       ctermfg=black   ctermbg=234     cterm=bold
hi StatusLineNC     ctermfg=black   ctermbg=16      cterm=bold
hi StatusLine       ctermfg=green   ctermbg=16      cterm=none
hi VertSplit        ctermfg=black   ctermbg=16      cterm=bold
hi Folded           ctermfg=236     ctermbg=black   cterm=bold,inverse
hi Title            ctermfg=white
hi Visual           ctermfg=white   ctermbg=4
hi Directory        ctermfg=red
hi Conceal          ctermfg=black   ctermbg=none    cterm=none

hi IncSearch        ctermfg=none ctermbg=237 cterm=none
hi Search           ctermfg=none ctermbg=237
hi Tooltip          cterm=none

" Columns
hi LineNr           ctermfg=black   ctermbg=16      cterm=none
hi SignColumn       ctermfg=94    ctermbg=16
hi FoldColumn       ctermfg=94    ctermbg=16      cterm=bold

" Syntax highlighting
hi Comment          ctermfg=black   ctermbg=none    cterm=italic
hi Todo             ctermfg=yellow  ctermbg=none    cterm=inverse
hi Boolean          ctermfg=green   cterm=bold
hi String           ctermfg=green   cterm=none
hi Identifier       ctermfg=yellow  cterm=none
hi Function         ctermfg=yellow  cterm=none
hi Type             ctermfg=red     cterm=none
hi Statement        ctermfg=red     cterm=none
hi Keyword          ctermfg=95     cterm=none " 137 or 95
hi Constant         ctermfg=yellow  cterm=none
hi Number           ctermfg=yellow  cterm=none
hi Special          ctermfg=red     cterm=none
hi Operator         ctermfg=red     cterm=none
hi PreProc          ctermfg=229

hi TabLineSel       ctermfg=yellow  ctermbg=none    cterm=none
hi TabLine          ctermfg=white   ctermbg=none    cterm=none
hi TabLineFill      ctermfg=none    ctermbg=none    cterm=none

" errors
hi Error            ctermbg=red     ctermfg=none
hi SpellErrors      ctermbg=red
hi SpellBad         ctermbg=none    ctermfg=red     cterm=underline
hi SpellCap         ctermbg=none    ctermfg=red     cterm=underline
hi SpellRare        ctermbg=none    ctermfg=green   cterm=underline
hi SpellLocal       ctermbg=none    ctermfg=blue    cterm=underline
hi ErrorMsg         ctermfg=red     ctermbg=none
hi WarningMsg       ctermfg=red     ctermbg=none
hi MoreMsg          ctermfg=yellow  ctermbg=none
hi ModeMsg          ctermfg=green   ctermbg=none
hi Question         ctermfg=green   ctermbg=none

hi Include          ctermfg=95      ctermbg=none

hi bb1 ctermbg=234
hi bb2 ctermbg=235
hi bb3 ctermbg=236
hi bb4 ctermbg=237
hi bb5 ctermbg=238
hi bb6 ctermbg=240
hi bb7 ctermbg=241
hi bb8 ctermbg=242

" :let id2 = matchadd('bb3', '\%3l\%4c\_.*\%5l\%22c')
" :let id3 = matchadd('bb4', '\%4l\%6c\_.*\%5l\%21c')
" :let id4 = matchadd('bb5', '\%5l\%8c\_.*\%5l\%20c')
" :let id5 = matchadd('bb6', '\%5l\%15c\_.*\%5l\%20c')
"
" :call matchdelete(id1)
" :call matchdelete(id2)
" :call matchdelete(id3)
" :call matchdelete(id4)
" :call matchdelete(id5)
"



