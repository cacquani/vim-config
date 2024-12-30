# VIM configuration

## Configuration

- simplify the base .vimrc file
- split out language config in a separate config file
- bundle language files to work around trouble downloading them in macosx

## Plugins

General notes:

- split out plugin configuration in separate config files
- replace ag.vim (deprecated) with ack.vim
  - aliase ack as Ag and use the silver searcher when installed
  - aliase ack as Rg and use ripgrep when installed
- expand and prettify git-gutter configuration

### Plugin manager

Using VimPlug as it suits my needs junegunn/vim-plug

### Navigation, stats and explorer

- bling/vim-airline
- airblade/vim-gitgutter
- christoomey/vim-tmux-navigator
- scrooloose/nerdtree
- fholgado/minibufexpl.vim
- ctrlpvim/ctrlp.vim
- mileszs/ack.vim
- mg979/vim-visual-multi
- sjl/vitality.vim
- tpope/vim-fugitive

### Colorscheme

Provisionally using sjl/badwolf, until I get to create the magpiejay theme

### File type extensions and linting

- dense-analysis/ale
- craigemery/vim-autotag
- sheerun/vim-polyglot
- lervag/vimtex
- lifepillar/pgsql.vim
- vim-ruby/vim-ruby
- ngmy/vim-rubocop
- tpope/vim-cucumber
- thoughtbot/vim-rspec
- slim-template/vim-slim
- mxw/vim-jsx
- kchmck/vim-coffee-script
- sirtaj/vim-openscad

### Formatting

- godlygeek/tabular
- tomtom/tcomment_vim
- tpope/vim-endwise
- tpope/vim-surround

## Magpie Jay Vim-Airline Theme

- create the magpie_jay airline theme
- define non-powerline-font section dividers
- add NERDTree section
- add CTRLP window bar

To do:

- tinker some more with alternative content for the sections
- figure out if it's possible to style other extensions
- figure out how to style the final extension-driven section

