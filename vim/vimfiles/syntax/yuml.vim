

" syn region Identifier matchgroup=SpecialChar start=/\[/ end=/\]/ oneline
" syn region Identifier matchgroup=SpecialChar start=/\[/ end=/|/

" syn match Identifier /\[[a-zA-Z0-9]\{-}\]/ms=s+1,me=e-1
" syn match Identifier /\[[a-zA-Z0-9]\{-}|/ms=s+1,me=e-1
syn match SpecialChar /\[/
syn match SpecialChar /\]/
syn match SpecialChar /|/
syn match Macro /note:/

syn region Statement end=/;/he=e-1 matchgroup=SpecialChar start=/:/ 

syn region Comment start="//" end="$"

syn match Statement /[0-9*]\(\.\.[0-9*]\)\?/

syn match Function /\w*()/
syn match Identifier /[A-Z][a-zA-Z0-9]*/

