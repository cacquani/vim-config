" Auto remove all trailing characters
augroup remtrailing
  autocmd!

  autocmd BufWritePre * :%s/\s\+$//e
augroup END

augroup makefile
  autocmd!

  " Use tab instead of spaces for makefiles
  autocmd FileType make set noexpandtab
  " Fold method
  autocmd FileType make setlocal foldmethod=indent
  " Comment entire line. For Makefiles, the comment must start at the beginning
  " of the line, otherwise it will just be passed to bash.
  autocmd FileType make nnoremap <buffer> <leader>! 0i# <esc>
augroup END

augroup markdown
  autocmd!

  " replace headers on underlined header type markdown
  autocmd FileType markdown onoremap ih= :<c-u>execute "normal! ?^==\\+$\r:nohlsearch\rkvg_"<cr>
  autocmd FileType markdown onoremap ih- :<c-u>execute "normal! ?^--\\+$\r:nohlsearch\rkvg_"<cr>
  autocmd FileType markdown onoremap ih# :<c-u>execute "normal! ?^#\\+ \r:nohlsearch\rwvg_"<cr>
augroup END

augroup vimscript
  autocmd!

  " Fold method
  autocmd FileType vim setlocal foldmethod=indent
  " Comment the current line
  autocmd FileType vim nnoremap <buffer> <leader>! I" <esc>
augroup END

augroup c
  autocmd!

  " Fold method
  autocmd FileType c setlocal foldmethod=indent
  " Comment the current line
  autocmd FileType c nnoremap <buffer> <leader>! I// <esc>
augroup END

augroup ruby
  autocmd!

  " Fold method
  autocmd FileType ruby setlocal foldmethod=indent
  " Comment entire line
  autocmd FileType ruby nnoremap <buffer> <leader>! I# <esc>
augroup END

augroup python
  autocmd!

  " Use 4 spaces as tab size for python
  autocmd FileType python set tabstop=4
  " Fold method
  autocmd FileType python setlocal foldmethod=indent
  " Comment the current line
  autocmd FileType python nnoremap <buffer> <leader>! I# <esc>
augroup END

augroup rust
  autocmd!

  " Use 4 spaces to tab in Rust
  autocmd FileType rust set tabstop=4
  " Fold method
  autocmd FileType rust setlocal foldmethod=indent
  " Comment the entire line.
  autocmd FileType rust nnoremap <buffer> <leader>! I// <esc>
augroup END

augroup javascript
  autocmd!

  " Fold method
  autocmd FileType javascript setlocal foldmethod=indent
  " Comment entire line
  autocmd FileType javascript nnoremap <buffer> <leader>! I// <esc>
augroup END

" Set ANSI art files
au BufRead,BufNewFile *.ans set filetype=ansi
augroup ansi
  autocmd!
  " Make sure we use the right encoding for ANSI art files
  setlocal enc=utf-8
  setlocal fileencoding=cp437
  setlocal fileencodings=cp437,ucs-bom,utf8,prc
  " Add some helpers to see the end of the line
  setlocal virtualedit=all
  setlocal textwidth=80
  setlocal colorcolumn=+1
augroup END
