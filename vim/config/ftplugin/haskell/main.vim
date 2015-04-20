" ghc-mod setting
hi ghcmodType ctermbg=237
let g:ghcmod_type_highlight = 'ghcmodType'
map <silent> _t :GhcModType<cr>
map <silent> __ :GhcModTypeClear<cr>
map <silent> <c-m> :GhcModCheckAsync<cr>
map <silent> <c-l> :GhcModLintAsync<cr>

set conceallevel=1
set concealcursor=nvi

" enable necoghc omnicompletion
setlocal omnifunc=necoghc#omnifunc
let g:necoghc_enable_detailed_browse = 1
set cpt+=s/Users/romeovs/.vim/ftplugin/haskell/complete

" au BufEnter *.hs call HaskellConceal()

" function! HaskellConceal()

" endfunction
