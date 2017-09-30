" Do not ignore vendor for ctrl+P
set wildignore=*/bower_components/*,*/dist/*,*/node_modules/*
set wildignore+=*/tmp/*,/public/*,*/target/*

" General Auto completion
Plugin 'Valloric/YouCompleteMe'
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'
set omnifunc=phpcomplete#CompletePHP

Plugin 'shawncplus/phpcomplete.vim'

"Syntax checker
Plugin 'scrooloose/syntastic'
" Enable it on file open
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq  = 0
let g:syntastic_always_populate_loc_list = 1

let g:syntastic_auto_loc_list = 1
let g:syntastic_loc_list_height=3

let g:syntastic_php_checkers=['php', 'phpcs']
