"" Remappings

" To quit all files quickly - useful for quitting 'git d' by holding down on Q
noremap Q :qa<CR>

" Quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" Capitalize
inoremap <c-U> <esc>veUi
inoremap <c-L> <esc>veui

" Set a mapleader
let mapleader = "!"
let maplocalleader = "!"

noremap <leader>vrc :vsplit $MYVIMRC<cr>
noremap <leader>sv :source $MYVIMRC<cr>

" Autoquote a single word
nnoremap <leader>" viw<esc>a"<esc>bi"<esc>lel
nnoremap <leader>' viw<esc>a'<esc>bi'<esc>lel

" Autoquote the selected text, if it's on one line
vnoremap <leader>" `<<esc>i"<esc>``la"<esc>`<
vnoremap <leader>' `<<esc>i'<esc>``la'<esc>`<

" Add a comment marker at the beginning of each line in the visually selected
" block
" too advanced at the moment, need to iterate on all lines in the block
" vnoremap <leader>"" `<<esc>

" Fast mappings to remove anything inside the next/last set of parenthesis of a
" certain type.
onoremap in( :<c-u>normal! f(vi(<cr>
onoremap il( :<c-u>normal! F)vi(<cr>
onoremap an( :<c-u>normal! f(vf)<cr>
onoremap al( :<c-u>normal! F)vF(<cr>
onoremap in[ :<c-u>normal! f[vi[<cr>
onoremap il[ :<c-u>normal! F]vi[<cr>
onoremap an[ :<c-u>normal! f[vf]<cr>
onoremap al[ :<c-u>normal! F]vF[<cr>
onoremap in{ :<c-u>normal! f{vi{<cr>
onoremap il{ :<c-u>normal! F}vi{<cr>
onoremap an{ :<c-u>normal! f{vf}<cr>
onoremap al{ :<c-u>normal! F}vF{<cr>
