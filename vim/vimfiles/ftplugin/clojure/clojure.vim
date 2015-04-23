" CLOJURE

let g:clojure_align_multiline_strings = 1
let g:clojure_align_subforms = 0
let g:clojure_fuzzy_indent = 1

" activate rainbowparentheses
RainbowParenthesesActivate
RainbowParenthesesLoadRound
RainbowParenthesesLoadSquare
RainbowParenthesesLoadBraces

let g:indentLine_enabled = 0

" core.logic syntax extensions
syntax keyword clojureMacro defne
syntax keyword clojureCond conde


" fu! Get_tmux_port()
"     let md = "clj" . strpart(system("echo " . shellescape(expand('%:p:h')) . " | md5"), 0, 32)
"     return md
" endfunction
" 
" fu! Open_REPL()
"     execute "silent !tmux-repl -w"
"     let g:slime_default_config = {"socket_name": "default", "target_pane": "0:0.1"}
" endfunction
" 
" let g:slime_default_config = {"socket_name": "default", "target_pane": Get_tmux_port() . ":1.1"}
" nmap <C-c><C-o> :call Open_REPL()<cr>:redraw!<cr>

" au BufNewFile,BufRead,VimEnter,FileType *.clj,*.edn,*.cljs RainbowParenthesesActivate
" au BufNewFile,BufRead,VimEnter,FileType *.clj,*.edn,*.cljs RainbowParenthesesLoadRound
" au BufNewFile,BufRead,VimEnter,FileType *.clj,*.edn,*.cljs RainbowParenthesesLoadSquare
" au BufNewFile,BufRead,VimEnter,FileType *.clj,*.edn,*.cljs RainbowParenthesesLoadBraces
