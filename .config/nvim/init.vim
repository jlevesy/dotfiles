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
set laststatus=2

colorscheme gruvbox
let mapleader=","
let localleader=",,"

call plug#begin('~/.local/share/nvim/plugged')

Plug 'majutsushi/tagbar'

Plug 'fatih/vim-go', { 'for': 'go' }
Plug 'rust-lang/rust.vim', { 'for': 'rust' }
Plug 'racer-rust/vim-racer', { 'for': 'rust' }
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-go', { 'for': 'go', 'do': 'make'}
Plug 'w0rp/ale', { 'for': ['php', 'js', 'ruby', 'html', 'css', 'yaml', 'toml', 'rust'] }

Plug 'morhetz/gruvbox'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'bronson/vim-trailing-whitespace'
Plug 'terryma/vim-multiple-cursors'
Plug 'SirVer/ultisnips'

" Git
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'airblade/vim-gitgutter'

" Fuzzy file search
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'itchyny/lightline.vim'

call plug#end()

filetype plugin on
filetype indent on
syntax on

set noshowmode
let g:lightline = {
      \ 'colorscheme': 'jellybeans',
      \ }

let g:deoplete#enable_at_startup = 1
" set completeopt-=preview

let g:UltiSnipsSnippetDirectories=["UltiSnips", "snips"]

" toggle spelling
nnoremap <leader>s :set invspell<CR>

" Split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" FZF shortcuts
nmap <c-p> :Files<CR>
nmap ; :Buffers<CR>
nmap <Leader>f :Ag<space><c-r>=expand("<cword>")<cr><CR>

" Misc
nmap <Leader>w :FixWhitespace<CR>
nmap <F12> :TagbarToggle<CR>
"Indent Whole file
"
noremap <Leader><tab> <esc>gg=G<C-o><C-o>zz
