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

" let g:airline_highlighting_cache = 1
let g:loaded_airline_themes = 1
let g:airline_theme='magpie_jay'

function! MagpieJayAirlineInit()
     " let g:airline_section_a = airline#section#create(['mode', ' ', 'branch'])
     let g:airline_section_a = airline#section#create(['mode'])
     " let g:airline_section_b = airline#section#create(['ffenc','hunks','%f'])
     let g:airline_section_b = airline#section#create(['%y', '%m', '%r'])
     " let g:airline_section_c = airline#section#create(['filetype'])
     let g:airline_section_c = airline#section#create(['%F'])

     let g:airline_section_x = airline#section#create(['%P'])
     let g:airline_section_y = airline#section#create(['%B'])
     let g:airline_section_z = airline#section#create(['%l', ':', '%c'])
endfunction

if v:vim_did_enter
      call MagpieJayAirlineInit()
else
      autocmd VimEnter * call MagpieJayAirlineInit()
endif
