
syntax region jsontGroupStart start="{."  end="}"
syntax region jsontExpansion start="{"  end="}" contains=jsontPipe
syntax match jsontPipe /|/

hi link jsontGroupStart PreProc
hi link jsontExpansion PreProc
hi link jsontPipe Operator
