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

" set color for concealed characters
hi Conceal ctermfg=red ctermbg=none cterm=none

" lambdas (\)
syntax match hsLambda "\\" conceal cchar=λ

" composition
syntax match hsComposeO /(\.)/ms=s+1,me=e-1 conceal cchar=·
syntax match hsCompose  / \. /ms=s+1,me=e-1 conceal cchar=·

" ->
syn match MHArrow   /->/       contains=MHArrowM,MHArrowH
syn match MHArrowM  /-/        contained containedin=MHArrow conceal cchar=⟶
syn match MHArrowH  /-\@<=>/   contained containedin=MHArrow cchar=  conceal

" a ⟶  b -→


" <-
syn match MHArrow   /<-/      contains=MHArrowH,MHArrowM
syn match MHArrowH  /</       contained containedin=MHArrow conceal cchar=⟵
syn match MHArrowM  /<\@<=-/  contained containedin=MHArrow cchar=  conceal

" => ⇒
syn match DMHArrow   /=>/       contains=DMHArrowM,DMHArrowH
syn match DMHArrowM  /=/        contained containedin=DMHArrow conceal cchar=⟹
syn match DMHArrowH  /=\@<=>/   contained containedin=DMHArrow  cchar= conceal

" >>=
" syn match DTTMArrow   />>\ze=/   contains=DTTMArrowT,DTTMArrowTT
" syn match DTTMArrowTT />/        contained containedin=DTTMArrow conceal cchar=
" syn match DTTMArrowT  />\@<=>/   contained containedin=DTTMArrow conceal cchar=
"
" " >=>
" syn match DTMHArrow   />=>/      contains=DTMHArrowT,DTMHArrowM,DTMHArrowH
" syn match DTMHArrowT  />/        contained containedin=DTMHArrow conceal cchar=
" syn match DTMHArrowM  /=/        contained containedin=DTMHArrow conceal cchar==
" syn match DTMHArrowH  /=\@<=>/   contained containedin=DTMHArrow conceal cchar=⇒
"
" " <=<
" syn match DHMTArrow   /<=</      contains=DHMTArrowM,DHMTArrowH,DHMTArrowT
" syn match DHMTArrowH  /</        contained containedin=DHMTArrow conceal cchar=⇐
" syn match DHMTArrowM  /=/        contained containedin=DHMTArrow conceal cchar==
" syn match DHMTArrowT  /=\@<=</   contained containedin=DHMTArrow conceal cchar=
"
" " =<<
" syn match DMTTArrow    /=<</      contains=DMTTArrowT,DMTTArrowTT,DMTTArrowM
" syn match DMTTArrowM   /=/        contained containedin=DMTTArrow conceal cchar==
" syn match DMTTArrowT   /</        contained containedin=DMTTArrow conceal cchar=
" syn match DMTTArrowTT  /<\@<=</   contained containedin=DMTTArrow conceal cchar=
"
" " -<
" syn match MTArrow   /-</       contains=MTArrowT,MTArrowM
" syn match MTArrowT  /-/        contained containedin=MTArrow conceal cchar=-
" syn match MTArrowM  /-\@<=</   contained containedin=MTArrow conceal cchar=⤙
"
" " -<<
" syn match MTTArrow   /-<</          contains=MTTArrowT,MTTArrowM,HTTArrowTT
" syn match MTTArrowM  /-<</me=s+1    contained containedin=MTTArrow conceal cchar=-
" syn match MTTArrowT  /-\@<=</       contained containedin=MTTArrow conceal cchar=⤛
" syn match MTTArrowTT /\(-<\)\@<=</  contained containedin=MTTArrow conceal cchar=<
"
" " >-
" syn match TMArrow   />\ze-/    contains=TMArrowT,TMArrowM
" syn match TMArrowT  />/        contained containedin=TMArrow conceal cchar=⤚
"
" ">>-
" syn match TTMArrow    />>\ze-/  contains=TTMArrowT,TTMArrowTT
" syn match TTMArrowTT  />/       contained containedin=TTMArrow conceal cchar=
" syn match TTMArrowT   />\@<=>/  contained containedin=TTMArrow conceal cchar=⤜
"
" " " >>
" " syntax match DiArrow   />>[^>=]/   contains=DiArrowA,DiArrowB
" " syntax match DiArrowA  />/       contained containedin=DiArrow conceal cchar=           " u+E0C1
" " syntax match DiArrowB  />\@<=>/           contained containedin=DiArrow conceal cchar=>  " >
"
" " >>>
" syntax match TriArrow   />>>/           contains=TriArrowA,TriArrowB,TriArrowC
" " syntax match TriArrowA  />>>/me=s+1     contained containedin=TriArrow conceal cchar=  " u+E0D3
" syntax match TriArrowA  />>>/me=s+1     contained containedin=TriArrow conceal cchar=  " u+E0C1
" syntax match TriArrowB  />\@<=>>/me=s+1 contained containedin=TriArrow conceal cchar=>  " >
" syntax match TriArrowC  /\(>>\)\@<=>/   contained containedin=TriArrow conceal cchar=  " u+E0D2
