set nocompatible              " be iMproved, required
set noswapfile
filetype on " required

"Import bundle files
source $HOME/.bundles.vim

"Colors
set t_Co=256
set fillchars+=stl:\ ,stlnc:\

set background=dark
colorscheme jellybeans

"Indentation with spaces only
"1 tab = v spaces
set expandtab
set shiftwidth=2
set softtabstop=2

set number
set relativenumber
set ruler

"Line of death
set textwidth=80
set colorcolumn=+5

"Leader and localleader setup
let mapleader=","
let localleader=",,"

"Text editing
" duplicate line
:nnoremap <leader>d :t.<cr>
:nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
:nnoremap <leader>' viw<esc>a'<esc>hbi'<esc>lel

"Indent Whole file
:nnoremap <leader>i gg=G<cr>

"vim conf editing
" edit vim (ev)
:nnoremap <leader>ev :vsplit $MYVIMRC<cr>
" edit bundles (eb)
:nnoremap <leader>eb :vsplit ~/.bundles.vim<cr>
" reload conf
:nnoremap <leader>rc :source $MYVIMRC<cr>

"Split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

:match ErrorMsg '\%>80v.\+'

" doh, force to reload filetype
filetype off
filetype on
syntax enable
