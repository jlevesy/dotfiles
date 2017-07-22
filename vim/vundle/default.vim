" General Auto completion
Plugin 'Valloric/YouCompleteMe'
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'

"Syntax checker
Plugin 'scrooloose/syntastic'
" Enable it on file open
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq  = 0
let g:syntastic_always_populate_loc_list = 1

let g:syntastic_auto_loc_list = 1
let g:syntastic_loc_list_height=3

let g:syntastic_javascript_checkers=['eslint']
let g:syntastic_vue_checkers=['eslint']
let g:syntastic_ruby_checkers=['rubocop']
let g:syntastic_ruby_rubocop_exec='~/bin/rubocop-wrapper'
let g:syntastic_python_checkers=['flake8']
let g:syntastic_rust_checkers = ['cargo']

Plugin 'ekalinin/dockerfile.vim'

Plugin 'jlevesy/rust.vim'
let g:rustfmt_autosave = 0
let g:rust_conceal = 1

Plugin 'mxw/vim-jsx'
let g:jsx_ext_required = 0

Plugin 'posva/vim-vue'
au BufNewFile,BufRead *.vue set filetype=vue
