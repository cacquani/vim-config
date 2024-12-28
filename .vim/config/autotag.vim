"" Autotags/CTAGS related

" hit ,f to find the definition of the current class
" this uses ctags. the standard way to get this is Ctrl-]
nnoremap <silent> ,f <C-]>

" Index ctags from any project, including those outside Rails
map <Leader>ct :!ctags -R .<CR>
