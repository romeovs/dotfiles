
syn keyword atKeyword def deftype alias exclude
syn keyword atPreProc import lobby jlobby
syn keyword atConstant nil self super
syn keyword atBool     true false
syn match atPunctuation /;\|:/
syn match atOperator /\(+\|*\|\/\|!\|==\|!=\|+=\|-=\||\)/
syn match atAssign   /:=/
syn match atNumber   /-\?\(\.\?\d\|\d\.\d\)/
syntax match atFn    /\w\+:/
syntax region atStringD start=+"+  skip=+\\\("\|$\)+  end=+"\|$+
syntax region atStringS start=+'+  skip=+\\\('\|$\)+  end=+'\|$+
syntax region atBracket matchgroup=atBrackets start="\[" end="\]" contains=@atAll
syntax region atBlock   matchgroup=atParens   start="{"  end="}"  contains=@atAll
syntax region atLineComment    start=+\/\/+ end=+$+ keepend
syntax region atBlockComment   start="/\*"  end="\*/" fold

syntax cluster atAll contains=atBlock,atKeyword,atPunctuation,atAssign,atOperator,atNumber,atStringD,atStringS,atBracket,atLineComment,atBlockComment,atFn,atPreProc,atBool,atConstant

hi link atKeyword      Keyword
hi link atPunctuation  Noise
hi link atAssign       Operator
hi link atOperator     Operator
hi link atStringD      String
hi link atStringS      String
hi link atNumber       Number
hi link atBrackets     Noise
hi link atParens       Noise
hi link atLineComment  Comment
hi link atBlockComment Comment
hi link atFn           Function
hi link atPreProc      PreProc
hi link atConstant     Constant
hi link atBool         Boolean
