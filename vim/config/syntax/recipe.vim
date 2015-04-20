
runtime syntax/markdown.vim

syn match Number "\d\+"
syn match Number "\d\+\w\+"
syn match Frac12 "1/2" conceal cchar=½
syn match Frac14 "1/4" conceal cchar=¼
syn match Frac34 "3/4" conceal cchar=¾
syn match Taste  "(to taste)"
syn match IngredientStart "\$" conceal nextgroup=Ingredient
syn match Ingredient "[ a-zA-Z]*\ze_" nextgroup=IngredientEnd
syn match IngredientEnd "_" conceal





syn keyword Measure l g m stalk tsp tbsp min hour seconds

hi Conceal ctermfg=none ctermbg=none cterm=none
hi link Conceal Number
hi link Measure Number
hi link Taste Comment
hi Ingredient ctermfg=166



set cole=2
