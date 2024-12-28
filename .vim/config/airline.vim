"" airline settings

let g:airline_powerline_fonts = 1
set laststatus=2
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'

" git-gutter in status line
" function! GitStatus()
"     let [a,m,r] = GitGutterGetHunkSummary()
"       return printf('+%d ~%d -%d', a, m, r)
" endfunction
" set statusline+=%{GitStatus()}
