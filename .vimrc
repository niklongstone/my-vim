set nu
set tabstop=3
set expandtab
set shiftwidth=3
set autoindent
set mouse=a

autocmd FileType php noremap <C-M> :w!<CR>:!php %<CR>
autocmd vimenter * NERDTree

filetype plugin on

set omnifunc=syntaxcomplete#Complete
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

set tags=~/.vim/syntax/php.tags

call pathogen#infect()
