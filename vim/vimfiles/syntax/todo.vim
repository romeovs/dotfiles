" syntax match todoTodo '\[ \]'
" syntax match todoDone '\[x\]'
" syntax match todoDoing '\[\~\]'
" syntax match todoSkip '\[-\]'
"
" hi link todoDone  String
"

syntax region todoAll matchgroup=todoBraces start='^ *\[' end='\]' contains=todoDoing,todoTodo,todoDone,todoNot

syntax match todoDoing '\~' contained
syntax match todoNot   '-'  contained
syntax match todoDone  /[*x]/  contained

hi link todoBraces  Comment
hi todoDoing ctermfg=yellow
hi todoNot   ctermfg=red
hi todoDone  ctermfg=green
