"" General vim configuration
set hidden
set noswapfile
set nobackup
" Autosave
" let g:auto_save = 0
" let g:auto_save_in_insert_mode = 0

set mouse=a
set tabstop=2 shiftwidth=2 expandtab
set number
set nowrap
set backspace=indent,eol,start
set textwidth=0
set wrapmargin=0
set scrolloff=2
set t_Co=256
set term=xterm-256color
set incsearch
set hlsearch
set cursorline
set cursorcolumn
set timeout         " Do time out on mappings and others
set timeoutlen=2000 " Wait {num} ms before timing out a mapping

" Auto remove all trailing characters
autocmd BufWritePre * :%s/\s\+$//e

" Toggle between the last 2 files
nmap <Tab> :b#<CR>

" Search function, also used by CtrlP
set wildignore=*.keep,*~,*.swp
set wildmode=list:longest,list:full

" Folding
set foldmethod=indent
set foldlevel=100

" Tab completion
" will insert tab at beginning of line,
" will use completion if not at beginning
function! Tab_Or_Complete()
  if col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
    return "\<c-p>"
  else
    return "\<Tab>"
  endif
endfunction
:inoremap <Tab> <C-R>=Tab_Or_Complete()<CR>
:inoremap <S-Tab> <c-n>
:set dictionary="/usr/dict/words"

" Colorcolumn
set textwidth=79
set colorcolumn=+1,+41
highlight ColorColumn guibg=lightgrey

" Quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" When you’re pressing Escape to leave insert mode in the terminal, it will by
" default take a second or another keystroke to leave insert mode completely
" and update the statusline. This fixes that. I got this from:
" https://powerline.readthedocs.org/en/latest/tipstricks.html#vim
if !has('gui_running')
  set ttimeoutlen=10
  augroup FastEscape
    autocmd!
    au InsertEnter * set timeoutlen=0
    au InsertLeave * set timeoutlen=1000
  augroup END
endif

