Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-surround'

"Git
Plugin 'tpope/vim-fugitive'

" General Auto completion
Plugin 'Valloric/YouCompleteMe'
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'

" CtrlP
Plugin 'kien/ctrlp.vim'
set wildignore+=*/bower_components/*,*/dist/*,*/node_modules/*
set wildignore+=*/tmp/*,/public/*,*/target/*,*/vendor/*

"Whitespace handling
Plugin 'bronson/vim-trailing-whitespace'

"AirLine
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
let g:airline_powerline_fonts = 1
let g:airline_theme = 'minimalist'
let g:airline_skip_empty_sections = 1
set laststatus=2
