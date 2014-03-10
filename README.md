myVim
=====

my Vim configuration for PHP IDE

below my .vimrc file
============================

set nu
set tabstop=3
set shiftwidth=3
set autoindent

autocmd FileType php noremap <C-M> :w!<CR>:!php %<CR>

filetype plugin on
set omnifunc=syntaxcomplete#Complete
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

set tags=~/.vim/syntax/php.tags

call pathogen#infect()
