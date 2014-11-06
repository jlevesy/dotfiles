set nocompatible              " be iMproved, required
filetype off                  " required

filetype indent on
filetype plugin on

"Import bundle files
source $HOME/.bundles.vim

"Colors
set t_Co=256
set fillchars+=stl:\ ,stlnc:\

syntax on
set background=dark
colorscheme jellybeans

"Font management
if has("gui_running")
  if has("darwin")
    set guifont=Monaco\ for\ Powerline:h12
  endif
endif

"Indentation with spaces only
"1 tab = v spaces
set expandtab
set shiftwidth=2
set softtabstop=2

set number
set ruler

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

"NerdTree
:nnoremap <leader>n :NERDTreeToggle<cr>

"vim conf editing
" edit vim (ev)
:nnoremap <leader>ev :vsplit $MYVIMRC<cr>
" edit bundles (eb)
:nnoremap <leader>eb :vsplit ~/.bundles.vim<cr>
" reload conf
:nnoremap <leader>rc :source $MYVIMRC<cr>
