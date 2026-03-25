" Auto remove all trailing characters
augroup remtrailing
  autocmd!
  autocmd BufWritePre * :%s/\s\+$//e
augroup END

" Comment whole lines, per buftype
augroup fastcomment
  autocmd!
  autocmd FileType vim        nnoremap <buffer> <leader>! I" <esc>
  autocmd FileType c          nnoremap <buffer> <leader>! I// <esc>
  autocmd FileType rust       nnoremap <buffer> <leader>! I// <esc>
  autocmd FileType javascript nnoremap <buffer> <leader>! I// <esc>
  autocmd FileType python     nnoremap <buffer> <leader>! I# <esc>
  autocmd FileType ruby       nnoremap <buffer> <leader>! I# <esc>
augroup END

augroup tabbing
  autocmd!

  " Use tab instead of spaces for makefiles
  autocmd FileType make set noexpandtab

  " Enforce canonic space indentation per fieltype
  autocmd FileType python set tabstop=4
  autocmd FileType rust   set tabstop=4
augroup END
