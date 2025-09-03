" Language: moshell
" Maintainer: ealmina 
" Latest Revision: 05 12 2018

syn keyword moshell crn cr end set lset scw bl deb scd exit del
syn keyword moshell_set lt all confb gs s get lget acc unset pr ma mr scg  st wait cvms uv print confl l echo
syn keyword moshell_code for done to break
syn keyword moshell_if if else fi
syn keyword moshell_func func endfunc function
syn match moshellParam "$[-_a-zA-Z0-9]*"
syn match lineComment "//.*"
syn match lineComment "^#.*"

let b:current_syntax = "cel"

hi moshell guifg=Red ctermfg=Red term=bold
hi moshell_set guifg=Blue ctermfg=Blue term=bold
hi moshell_code guifg=Green ctermfg=Green term=bold
hi moshell_if guifg=Yellow ctermfg=Yellow guibg=Gray term=bold
hi moshell_func guifg=Brown ctermfg=Brown guibg=Gray term=bold
hi moshellParam guifg=Magenta ctermfg=Magenta term=bold
hi lineComment guifg=Gray ctermfg=Gray term=italic
