let b:current_syntax = ''
unlet b:current_syntax
runtime! syntax/tex.vim

let b:current_syntax = ''
unlet b:current_syntax
syntax include @TeX syntax/tex.vim

hi link Snip SpecialComment
let b:current_syntax = 'rtex'

" setlocal nocursorline
NoMatchParen
setl conceallevel=0

" COMPILE {{{
function! CompileTeX()

" clear quickfix list
call setqflist([])
"
" set up shell
silent setl shell=bash
silent setl shellpipe=2>&1\ \|\ tee\ %s;exit\ \${PIPESTATUS[0]}

if !filereadable("latexmkrc")
    " W/O Latexmk
    let save_cursor = getpos(".")
    echon "Compiling with pdflatex...  "
    let b:tex_flavor = 'pdflatex'
    compiler tex
    set errorformat=%f:%l:\ %m
    silent setl makeprg=pdflatex\ \-shell\-escape\ \-file\-line\-error\ \-interaction=nonstopmode\ \-output\-format=pdf\ %
    silent make!

    if v:shell_error
        let l:entries = getqflist()
        if len(l:entries) > 0
            copen
            resize 6
            wincmd p
        else
            echohl WarningMsg
            echomsg "compile failed with errors"
            echohl None
        endif
    else
        cclose
        call setpos(".", save_cursor)
        redraw!
        echon "Compile succesful!"
    endif
else
    " LATEXMK
    " sae cursor
    let save_cursor = getpos(".")


    echon "Compiling with latexmk...  "
    compiler tex
    silent make
    redraw!
    if v:shell_error
        let l:entries = getqflist()
        if len(l:entries) > 0
            copen
            resize 6
            wincmd p
        else
            echohl WarningMsg
            echomsg "compile failed with errors"
            echohl None
        endif
    else
        cclose
        call setpos(".", save_cursor)
        echon "Compile succesful!"
    endif

endif


endfunction
" }}}

" VIEW {{{
function! OpenFile(file)
    silent execute "! open " . a:file
    redraw!
endfunction!

function! ViewTeX()
    let l:pdffile = "build/" . expand("%:r") .".pdf"
    if filereadable(l:pdffile)
        call OpenFile(l:pdffile)
    else
        let l:pdffile = expand("%:r") .".pdf"
        if filereadable(l:pdffile)
            call OpenFile(l:pdffile)
        endif
    endif
endfunction
" }}}

" map
nmap <silent> <C-m> :call CompileTeX()<cr>
nmap <silent> <C-o> :call ViewTeX()<cr>

" vim: fdm=marker
