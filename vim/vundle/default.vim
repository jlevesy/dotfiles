" General Auto completion
Plugin 'Shougo/neocomplete'
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#enable_auto_select = 1
set completeopt=longest,menuone

Plugin 'w0rp/ale'
let g:airline#extensions#ale#enabled = 1
let g:ale_set_loclist = 0
let g:ale_set_quickfix = 1

Plugin 'ekalinin/dockerfile.vim'

Plugin 'jlevesy/rust.vim'
let g:rustfmt_autosave = 0
let g:rust_conceal = 1

Plugin 'mxw/vim-jsx'
let g:jsx_ext_required = 0

Plugin 'posva/vim-vue'
au BufNewFile,BufRead *.vue set filetype=vue
