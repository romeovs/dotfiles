
let g:t_shiftwidth=&l:shiftwidth
let g:t_expandtab=&l:expandtab
let g:t_tabstop=&l:tabstop

" Return indent (all whitespace at start of a line), converted from
" tabs to spaces if what = 1, or from spaces to tabs otherwise.
" When converting to tabs, result has no redundant spaces.
function! Indenting(indent, what, cols)
  let spccol = repeat(' ', a:cols)
  let result = substitute(a:indent, spccol, '\t', 'g')
  let result = substitute(result, ' \+\ze\t', '', 'g')
  if a:what == 1
    let result = substitute(result, '\t', spccol, 'g')
  endif
  return result
endfunction

" Convert whitespace used for indenting (before first non-whitespace).
" what = 0 (convert spaces to tabs), or 1 (convert tabs to spaces).
" cols = string with number of columns per tab, or empty to use 'tabstop'.
" The cursor position is restored, but the cursor will be in a different
" column when the number of characters in the indent of the line is changed.
function! IndentConvert(line1, line2, what)
  let savepos = getpos('.')
  let cols = g:t_tabstop
  execute a:line1 . ',' . a:line2 . 's/^\s\+/\=Indenting(submatch(0), a:what, cols)/e'
  call histdel('search', -1)
  call setpos('.', savepos)
endfunction

command! -nargs=? -range=% Space2Tab call IndentConvert(<line1>,<line2>,0,<q-args>)
command! -nargs=? -range=% Tab2Space call IndentConvert(<line1>,<line2>,1,<q-args>)
command! -nargs=? -range=% RetabIndent call IndentConvert(<line1>,<line2>,&et)

function! SaveTabSettings()
    let g:t_shiftwidth=&shiftwidth
    let g:t_expandtab=&expandtab
    let g:t_tabstop=&tabstop
endfunction

function! SetTabs()
  set noexpandtab
  set tabstop=2
  set shiftwidth=2
  RetabIndent
endfunction

function! SetSpaces()
  set expandtab
  RetabIndent
endfunction

" autocmd VimEnter * call SaveTabSettings()|call SetTabs()
" autocmd BufWritePre * call SetSpaces()
" autocmd FileWritePre * call SetSpaces()
" autocmd BufWritePost * call SetTabs()
