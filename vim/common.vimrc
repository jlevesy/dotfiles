set nocompatible              " be iMproved, required
set noswapfile

filetype on " required
syntax enable

colorscheme moonfly

filetype plugin indent on

"Leader and localleader setup
let mapleader=","
let localleader=",,"

"Indent Whole file
:nnoremap <leader>i gg=G<cr>

"vim conf editing
" edit vim (ev)
:nnoremap <leader>ev :vsplit $MYVIMRC<cr>
" reload conf
:nnoremap <leader>rc :source $MYVIMRC<cr>

set number
set relativenumber
set ruler

"Split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
