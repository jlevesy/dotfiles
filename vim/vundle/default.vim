" General Auto completion
Plugin 'Valloric/YouCompleteMe'
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'

Plugin 'w0rp/ale'

Plugin 'ekalinin/dockerfile.vim'

Plugin 'jlevesy/rust.vim'
let g:rustfmt_autosave = 0
let g:rust_conceal = 1

Plugin 'mxw/vim-jsx'
let g:jsx_ext_required = 0

Plugin 'posva/vim-vue'
au BufNewFile,BufRead *.vue set filetype=vue
