set formatprg=goimports

let g:go_fmt_autosave = 1
let g:go_fmt_command  = "goimports"
let g:go_highlight_extra_types = 1
let g:go_metalinter_enabled = ['vet', 'golint', 'errcheck']

let g:go_auto_sameids = 1
" let g:go_auto_type_info = 1
let g:deoplete#sources#go#source_importer = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_format_strings = 1
let g:go_highlight_string_spellcheck = 0

setl spell

command! -bang A call go#alternate#Switch(<bang>0, 'edit')
nmap <C-I> <Plug>(go-info)
nmap <C-D> <Plug>(go-doc)

nmap <silent> <tab>   :tabnext<cr>
nmap <silent> <S-tab> :tabprev<cr>

syn match goBinaryInt "\<-\=0[bB][01]\+\>"
syn match goBinaryError "\<-\=0[bB][01]*[2-9]\+[01]*\>"
" syn match goBinaryError "\<-\=0[bB].*[^01]\>"

hi def link goBinaryInt Integer
hi def link goBinaryError Error
