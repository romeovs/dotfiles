syn region pythonDocstring  start=+^\s*[uU]\?[rR]\?"""+ end=+"""+ keepend contains=pythonEscape,@Spell,pythonDoctest,pythonDocTest2,pythonSpaceError matchgroup=pyDocStringDelim
syn region pythonDocstring  start=+^\s*[uU]\?[rR]\?'''+ end=+'''+ keepend contains=pythonEscape,@Spell,pythonDoctest,pythonDocTest2,pythonSpaceError matchgroup=pyDocStringDelim

hi link pythonDocstring Comment
hi link pyDocStringDelim string
