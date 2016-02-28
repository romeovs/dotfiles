RainbowParenthesesActivate
RainbowParenthesesLoadRound

" fu! Get_tmux_port()
"     let md = "scm" . strpart(system("echo " . shellescape(expand('%:p:h')) . " | md5"), 0, 32)
"     return md
" endfunction
" 
" fu! Open_REPL()
"     execute "silent !tmux-csi -w"
" endfunction
" 
" let g:slime_default_config = {"socket_name": "default", "target_pane": "0:0.1"}
" nmap <C-c><C-o> :call Open_REPL()<cr>:redraw!<cr>
