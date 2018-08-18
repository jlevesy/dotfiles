set nocompatible            " Disable compatibility to old-time vi
set noswapfile              " No swap files
set showmatch               " Show matching brackets.
set mouse=v                 " middle-click paste with mouse
set tabstop=2               " number of columns occupied by a tab character
set softtabstop=2           " see multiple spaces as tabstops so <BS> does the right thing
set shiftwidth=2            " width for autoindents
set expandtab               " converts tabs to white space
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set relativenumber          " relative line numbers
set wildmode=longest,list   " get bash-like tab completions
set cc=120                  " set an 120 column border for good coding style

colorscheme moonfly
let mapleader=","
let localleader=",,"

" VimPlug auto install
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim '))
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

call plug#begin('~/.local/share/nvim/plugged')

Plug 'fatih/vim-go', { 'for': 'go' }

Plug 'tpope/vim-repeat'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'

" Git
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'airblade/vim-gitgutter'

" FuzzyFileSearch
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

Plug 'bronson/vim-trailing-whitespace'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

filetype plugin indent on
syntax on

let g:go_highlight_array_whitespace_error = 1
let g:go_highlight_chan_whitespace_error = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_metalinter_autosave = 1
let g:go_metalinter_autosave_enabled = ['vet', 'golint']
let g:go_list_height = 5
let g:go_fmt_options = "-s"

let g:airline_powerline_fonts = 1
let g:airline_theme = 'minimalist'
let g:airline_skip_empty_sections = 1

" toggle spelling
nnoremap <leader>s :set invspell<CR>

" Split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Fzf shortcuts
nmap <c-p> :Files<CR>
nmap ; :Buffers<CR>
nmap <Leader>a :Ag<Space>
