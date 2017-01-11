set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

"github based bundles

"General
Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-surround'

"Syntax checker
Plugin 'scrooloose/syntastic'
" Enable it on file open
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq  = 0
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_loc_list_height=3

let g:syntastic_javascript_checkers=['jshint']
let g:syntastic_ruby_checkers=['rubocop']
let g:syntastic_ruby_rubocop_exec='~/bin/rubocop-wrapper'
let g:syntastic_python_checkers=['flake8']
let g:syntastic_go_checkers = ['gometalinter']
let g:syntastic_go_gometalinter_args = ['--fast']
let g:syntastic_rust_checkers = ['cargo']

" General Auto completion
Plugin 'Valloric/YouCompleteMe'
" Setup
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_rust_src_path= "/home/jlevesy/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/src"
nnoremap <Leader>g :YcmCompleter GoTo<CR>

" CtrlP
Plugin 'kien/ctrlp.vim'
set wildignore+=*/bower_components/*,*/dist/*,*/node_modules/*
set wildignore+=*/tmp/*,/public/*
set wildignore+=*/target/*

"Whitespace handling
Plugin 'bronson/vim-trailing-whitespace'

"Git
Plugin 'tpope/vim-fugitive'

"AirLine
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
set laststatus=2
let g:Powerline_symbols = 'fancy'

Plugin 'ekalinin/dockerfile.vim'
Plugin 'mustache/vim-mustache-handlebars'
let g:mustache_abbreviations = 1

Plugin 'solarnz/thrift.vim'
Plugin 'rking/ag.vim'
Plugin 'Matt-Deacalion/vim-systemd-syntax'

Plugin 'jlevesy/rust.vim'
let g:rustfmt_autosave = 0
let g:rust_conceal = 1

call vundle#end()
filetype plugin indent on
