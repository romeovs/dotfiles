let g:fixmyjs_rc_filename = ['.eslintrc', '.eslintrc.json']
let g:fixmyjs_use_local = 1

let g:deoplete#enable_at_startup = 1
let g:autocomplete_flow#insert_paren_after_function = 0

hi link jsFlowType PreProc
hi link javascriptBraces Normal
hi link jsStorageClass Special
hi link jsFunction Special
hi link jsClassMethodType Keyword
hi link jsUndefined Builtin
hi link jsThis Builtin
hi link jsGlobalObjects Builtin

hi link jsFlowClassGroup TypeSig
hi link jsFlowNoise TypeSigOp
hi link jsFlowTypeValue TypeSig
hi link jsFlowType TypeSig
hi link jsFlowGroup TypeSig
hi link jsFlowObject TypeSig
hi link jsFlowExactObject TypeSig
hi link jsFlowMaybe TypeSigOp
hi link jsFlowTypeStatement TypeSig
hi link jsFlowClassFunctionGroup TypeSig
hi link jsFlowFunctionGroup TypeSig
hi link jsFlowDefinition TypeSig
hi link jsFlowParenAnnotation TypeSig
hi link jsFlowArrowArguments TypeSig
hi link jsFlowTypeCustom TypeSig
hi link jsFlowReturnParens TypeSig
hi link jsFlowReturnMaybe TypeSigOp
hi link jsFlowArrow TypeSigOp

hi link xmlTag PreProc
hi link xmlEndTag PreProc
hi link xmlTagName PreProc
hi link xmlAttrib PreProc
hi link xmlEqual PreProc

hi link jsDocTags SpecialComment
hi link jsDocType SpecialComment
hi link jsDocParam SpecialComment
