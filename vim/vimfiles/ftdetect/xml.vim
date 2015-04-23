au BufNewFile *.xml call LoadTemplate()

au BufRead,BufNewFile,BufNew *.bpel setl ft=xml
