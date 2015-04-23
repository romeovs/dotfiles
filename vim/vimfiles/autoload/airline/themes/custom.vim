" CUSTOM
let s:N1 = [ '#141413' , '#aeee00' ,  16, 202 ]     " black on orange
let s:N2 = [ '#f4cf86' , '#45413b' ,  16, 208 ]     " black on lighter orange
let s:N3 = [ '#8cffba' , '#242321' , 250, 238 ]     " white on gray
let s:N4 = [ '#666462' , 226 ]

let s:I1 = [ '#141413' , '#aeee00' ,  16,  36 ]     " black on cyan
let s:I2 = [ '#f4cf86' , '#45413b' ,  16,  30 ]     " black on darker cyan
let s:I3 = [ '#8cffba' , '#242321' , 250, 238 ]     " white on gray

let s:V1 = [ '#141413' , '#ffa724' ,  16  ,  39 ]   " black on blue
let s:V2 = [ '#000000' , '#fade3e' ,  16  ,  33 ]   " black on dark blue
let s:V3 = [ '#000000' , '#b88853' , 250  , 238 ]   " white on gray
let s:V4 = [ '#c7915b' , 173 ]

let s:IA1 = [ '#141413' , '#ffa724' , 16  , 239 ]   " black on gray
let s:IA2 = [ '#000000' , '#fade3e' , 16  , 241 ]   " black on light gray
let s:IA3 = [ '#000000' , '#b88853' , 16  , 243 ]   " black on lighter gray
let s:IA4 = [ '#c7915b' , 173 ]

let s:PA = [ '#f4cf86' , 222 ]
let s:RE = [ '#ff9eb8' , 211 ]

let s:file = [ '#ff2c4b' , ''      , 196,     238      , '' ]
let s:IA   = [ s:N2[1]   , s:N3[1] , s:N2[3] , s:N3[3] , '' ]
let g:airline#themes#custom#palette = {}

let g:airline#themes#custom#palette.accents = {
      \ 'red': [ '#ff2c4b' , '' , 196 , '' , '' ]
      \ }

" NORMAL
let g:airline#themes#custom#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
let g:airline#themes#custom#palette.normal_modified = {
    \ 'airline_b': [ s:N3[0], s:N3[1], 214, s:N3[3] ],
    \ 'airline_c': [ s:N3[0], s:N3[1], 214, s:N3[3] ]
    \ }

" INSERT
let g:airline#themes#custom#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#custom#palette.insert_modified = g:airline#themes#custom#palette.normal_modified
let g:airline#themes#custom#palette.insert_paste = {
      \ 'airline_a': [ s:I1[0]   , s:I1[1]   , s:I1[2]   , 222   , ''     ] }

" REPLACE MODE
let g:airline#themes#custom#palette.replace = copy(airline#themes#custom#palette.insert)
let g:airline#themes#custom#palette.replace.airline_a = [ s:I1[0] , s:RE[0] , s:I1[2] , s:RE[1] , '' ]
let g:airline#themes#custom#palette.replace_modified = g:airline#themes#custom#palette.insert_modified

" PASTE MODE
let g:airline#themes#custom#palette.insert_paste ={
      \ 'airline_a': [ s:I1[0]   , s:I1[1]   , s:I1[2]   , 222   , ''     ] }

" VISUAL
let g:airline#themes#custom#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#custom#palette.visual_modified = {
      \ 'airline_c': [ s:V3[0]   , s:V4[0]   , s:V3[2]   , s:V4[1]   , ''     ] }

" VISUAL MODE
let g:airline#themes#custom#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#custom#palette.visual_modified = g:airline#themes#custom#palette.insert_modified

" INACTIVE
let g:airline#themes#custom#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)
let g:airline#themes#custom#palette.inactive_modified = {}


