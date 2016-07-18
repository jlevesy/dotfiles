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
let g:syntastic_loc_list_height=5
let g:syntastic_javascript_checkers=['jshint']
let g:syntastic_ruby_checkers=['rubocop']
let g:syntastic_ruby_rubocop_exec='~/bin/rubocop-wrapper'
let g:syntastic_coffee_checkers = ['coffeelint', 'coffee']
let g:syntastic_python_checkers=['flake8']
let g:syntastic_go_checkers = ['gometalinter']
let g:syntastic_go_gometalinter_args = ['--fast']

" General Auto completion
Plugin 'Valloric/YouCompleteMe'
" Setup
let g:ycm_add_preview_to_completeopt=0
let g:ycm_confirm_extra_conf=0
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'
set completeopt-=preview

" CtrlP
Plugin 'kien/ctrlp.vim'
set wildignore+=*/bower_components/*,*/dist/*,*/node_modules/*
set wildignore+=*/tmp/*,/public/*

"Whitespace handling
Plugin 'bronson/vim-trailing-whitespace'

"Git
Plugin 'tpope/vim-fugitive'

"AirLine
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
set laststatus=2
let g:Powerline_symbols = 'fancy'
let g:airline_powerline_fonts = 1

Plugin 'kchmck/vim-coffee-script'
Plugin 'ekalinin/dockerfile.vim'
Plugin 'mustache/vim-mustache-handlebars'
let g:mustache_abbreviations = 1

Plugin 'solarnz/thrift.vim'
Plugin 'rking/ag.vim'
Plugin 'Matt-Deacalion/vim-systemd-syntax'

call vundle#end()
filetype plugin indent on
