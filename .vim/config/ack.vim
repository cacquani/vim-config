" Ack (Ag) configuration
if executable('ag')
  let g:ackprg = 'ag --vimgrep'

  " Alias Ack as Ag
  for command in ['Ack', 'AckAdd', 'AckFromSearch', 'LAck', 'LAckAdd', 'AckFile', 'AckHelp', 'LAckHelp', 'AckWindow', 'LAckWindow']
    execute 'command! -nargs=* ' . substitute(command, 'Ack', 'Ag', '') . ' ' . command . ' <args>'
  endfor
endif

" Ack (Rg) configuration
if executable('rg')
  let g:ackprg = 'rg --vimgrep --no-heading'

  " Alias Ack as Rg
  for command in ['Ack', 'AckAdd', 'AckFromSearch', 'LAck', 'LAckAdd', 'AckFile', 'AckHelp', 'LAckHelp', 'AckWindow', 'LAckWindow']
    execute 'command! -nargs=* ' . substitute(command, 'Ack', 'Rg', '') . ' ' . command . ' <args>'
  endfor
endif
