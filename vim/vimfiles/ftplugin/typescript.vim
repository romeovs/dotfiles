autocmd FileType typescriptreact setlocal commentstring=//\ %s

hi link typescriptImport Keyword
hi link typescriptExport Keyword
hi link typescriptCastKeyword Keyword

syn keyword jsGlobals Promise AbortController fetch Function Object Array
syn keyword jsBrowserGlobals window console
syn keyword typescriptTypeKeyword type

hi link jsBrowserGlobals Builtin
hi link jsGlobals Builtin

hi link typescriptVariable Special

hi link typescriptMember Normal
hi link typescriptBraces Normal

hi link typescriptInterfaceKeyword Keyword
hi link typescriptTypeKeyword Keyword
hi link typescriptInterfaceName Normal

hi link typescriptPredefinedType TypeSig
hi link typescriptTypeAnnotation TypeSigOp
hi link typescriptTypeReference TypeSig
hi link typescriptTypeBrackets TypeSigOp
hi link typescriptMemberOptionality TypeSigOp
hi link typescriptFuncTypeArrow TypeSigOp
hi link typescriptTypeBracket TypeSigOp
hi link typescriptFuncType TypeSig

hi link typescriptCall Normal
hi link typescriptFuncKeyword Special
hi link typescriptObjectLabel Normal
hi link typescriptParens Normal
hi link typescriptProp Normal
hi link typescriptBOMWindowMethod Normal
hi link typescriptFileReaderProp Normal

hi link tsxTagName PreProc
hi link tsxTag PreProc
hi link tsxAttrib PreProc
hi link tsxAttrib PreProc
hi link tsxAttribBraces PreProc
hi link tsxEqual Function
hi link tsxCloseTag PreProc
hi link tsxCloseString PreProc
hi link tsxIntrinsicTagName PreProc

hi link typescriptTemplateSB PreProc

hi link typescriptImport Keyword
hi link typescriptModuleNormal Keyword
hi link typescriptModuleAs Keyword
hi link typescriptFrom Keyword
hi link typescriptDefault Keyword
hi link typescriptEndColons Normal
hi link typescriptAliasDeclaration Normal
hi link typescriptArrowFuncArg Normal
hi link typescriptBinaryOp Operator
hi link typescriptAssign Operator
hi link typescriptDecorator PreProc

hi link typescriptClassStatic Keyword
hi link typescriptNull Builtin
hi link typescriptGlobal Builtin
hi link typescriptGlobalMethod Function
hi link typescriptObjectStaticMethod Normal
hi link typescriptBOMHistoryProp Normal
hi link typescriptArrayMethod Normal
hi link typescriptFileListMethod Normal
hi link typescriptNumberMethod Normal
hi link typescriptDOMDocProp Normal

hi link typescriptIdentifier Builtin

syn keyword tsThis this

hi typescriptDocNotation ctermfg=124 cterm=italic
hi typescriptDocTags ctermfg=124 cterm=italic

hi link typescriptFuncName Normal
hi link typescriptFuncKeyword Keyword


hi link typescriptBOMWindowProp Builtin
hi link typescriptMathStaticMethod Normal
hi link typescriptDOMFormProp Normal
hi link typescriptDOMDocMethod Normal
hi link typescriptConsoleMethod Normal
hi link typescriptMathStaticProp Normal
hi link typescriptES6SetProp Normal

hi link typescriptBOMLocationMethod Normal
hi link typescriptBOMStorageMethod Normal
hi link typescriptDOMEventProp Normal

