"" Disable compatibility with vi
set nocompatible
"" Turn off autodetect filetypes, helps forcing plugins to load correctly when
"" it's turned on again below
filetype off

"" Automatically download vim-plug if not already set up
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

"" Vim Plug
Plug 'junegunn/vim-plug'

"" Navigation, stats and explorer
Plug 'bling/vim-airline'
Plug 'airblade/vim-gitgutter'
Plug 'christoomey/vim-tmux-navigator'
Plug 'scrooloose/nerdtree'
Plug 'fholgado/minibufexpl.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'mileszs/ack.vim'
Plug 'mg979/vim-visual-multi'
Plug 'sjl/vitality.vim'
Plug 'tpope/vim-fugitive'

"" Colorscheme
Plug 'sjl/badwolf'

"" File type extensions and linting
Plug 'dense-analysis/ale'
Plug 'craigemery/vim-autotag'
Plug 'sheerun/vim-polyglot'
Plug 'lervag/vimtex'
Plug 'lifepillar/pgsql.vim'
Plug 'vim-ruby/vim-ruby'
Plug 'ngmy/vim-rubocop'
Plug 'tpope/vim-cucumber'
Plug 'thoughtbot/vim-rspec'
Plug 'slim-template/vim-slim'
Plug 'mxw/vim-jsx'
Plug 'kchmck/vim-coffee-script'
Plug 'sirtaj/vim-openscad'

"" Formatting
Plug 'godlygeek/tabular'
Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-surround'

call plug#end()

"" Enable plugins and indent and load plugin for the detected file types
filetype plugin indent on

"" Import configurations
" General VIM
source ~/.vim/config/general.vim

" Tmux integration
source ~/.vim/config/tmux.vim

" Language-related
source ~/.vim/config/lang.vim

"" Plugin-specific configurations
source ~/.vim/config/airline.vim
source ~/.vim/config/git-gutter.vim
source ~/.vim/config/nerd-tree.vim
source ~/.vim/config/ctrlp.vim
source ~/.vim/config/ack.vim

source ~/.vim/config/ale.vim
source ~/.vim/config/autotag.vim

" Programming language specific conf
source ~/.vim/config/ruby.vim

"" Color schemes
" start from badwolf as a base
colorscheme badwolf

" To quit all files quickly - useful for quitting 'git d' by holding down on Q
map Q :qa<CR>

au FileType css setl ofu=csscomplete#CompleteCSS
au FocusLost * :wa

map VIM 0 ^

" Map leader to comma
" The default would be backslash
let mapleader = ","

" Quick togo last buffer basically
nnoremap <leader><leader> <c-^>

nmap <silent> ,qc :cclose<CR>
nmap <silent> ,qo :copen<CR>

" List Buffers
nmap <silent> <Leader>b :CtrlPBuffer<CR>

nmap <leader>w :w!<cr>
nmap <leader>q :q<CR>

abbr saop! save_and_open_page

let g:multi_cursor_next_key='<C-m>'
" let g:multi_cursor_prev_key='<C-p>'
" let g:multi_cursor_skip_key='<C-x>'
" let g:multi_cursor_quit_key='<Esc>'

"" Local config
if filereadable($HOME . "/.vimrc.local")
  source ~/.vimrc.local
endif
