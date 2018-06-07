" General Auto completion
Plugin 'Shougo/deoplete.nvim'
Plugin 'roxma/nvim-yarp'
Plugin 'roxma/vim-hug-neovim-rpc'

" Use deoplete.
let g:deoplete#enable_at_startup = 1

Plugin 'w0rp/ale'
let g:airline#extensions#ale#enabled = 1
let g:ale_set_loclist = 0
let g:ale_set_quickfix = 1

Plugin 'ekalinin/dockerfile.vim'

Plugin 'rust-lang/rust.vim'
let g:rustfmt_autosave = 0
let g:rust_conceal = 1

Plugin 'mxw/vim-jsx'
let g:jsx_ext_required = 0

Plugin 'posva/vim-vue'
au BufNewFile,BufRead *.vue set filetype=vue
