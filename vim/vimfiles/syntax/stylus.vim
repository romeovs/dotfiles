hi link stylusImport PreProc

syn keyword if stylusIf
hi link stylusIf PreProc

syn match globalModule /:global/
syn match localModule /:local/

syn region cssModule matchgroup=cssModuleGroup start=":\(local\|global\)(" end=')' contains=cssSelector,cssTagName,stylusClass,stylusClassChar,stylusId,stlyusIdChar

hi def link cssModuleGroup              PreProc
hi def link localModule                 PreProc
hi def link globalModule                PreProc

hi def link cssCompose                  PreProc
hi def link cssFrom                     PreProc
