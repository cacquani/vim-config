"" Magpie Jay Vim/Airline Theme

"" Colour palette

"" Airline

" let g:airline_highlighting_cache = 1

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
  " autocmd VimEnter * call MagpieJayAirlineInit()
  autocmd BufEnter * call MagpieJayAirlineInit()
endif
