" git-gutter settings
set updatetime=100
set signcolumn=yes
let g:gitgutter_highlight_lines = 0
let g:gitgutter_highlight_linenrs = 0
let g:gitgutter_sign_allow_clobber = 1

" highlight SignColumn
highlight GitGutterAdd          guibg=darkgreen  ctermfg=darkgreen
highlight GitGutterChange       guibg=darkyellow ctermfg=darkyellow
highlight GitGutterDelete       guibg=red        ctermfg=red
highlight GitGutterChangeDelete guibg=yellow     ctermfg=yellow

" symbols
let g:gitgutter_sign_added = '★'
let g:gitgutter_sign_modified = '⏵'
let g:gitgutter_sign_removed = '⁃'
let g:gitgutter_sign_removed_first_line = '•'
let g:gitgutter_sign_removed_above_and_below = '⁃'
let g:gitgutter_sign_modified_removed = '⏴'

