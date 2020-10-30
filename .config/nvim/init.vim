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
Plug 'neovim/nvim-lspconfig'
Plug 'morhetz/gruvbox'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'bronson/vim-trailing-whitespace'
Plug 'terryma/vim-multiple-cursors'
Plug 'SirVer/ultisnips'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'airblade/vim-gitgutter'
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

" Neovim LSP setup
lua <<EOF
  require'nvim_lsp'.gopls.setup{}
  require'nvim_lsp'.dockerls.setup{}
  require'nvim_lsp'.bashls.setup{}
  require'nvim_lsp'.solargraph.setup{
    filetypes = { "ruby", "rb" }
  }
  require'nvim_lsp'.tsserver.setup{}
  require'nvim_lsp'.yamlls.setup{
    filetypes = { "yaml", "yml" }
  }
  require'nvim_lsp'.rust_analyzer.setup{}
EOF

autocmd Filetype go setlocal omnifunc=v:lua.vim.lsp.omnifunc
autocmd Filetype sh setlocal omnifunc=v:lua.vim.lsp.omnifunc
autocmd Filetype rb setlocal omnifunc=v:lua.vim.lsp.omnifunc
autocmd Filetype js setlocal omnifunc=v:lua.vim.lsp.omnifunc

autocmd BufWritePre *.rs lua vim.lsp.buf.formatting_sync(nil, 1000)
autocmd BufWritePre *.go lua vim.lsp.buf.formatting_sync(nil, 1000)

" LSP shortcuts
nnoremap <silent> <leader>d <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> <leader>D <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> <leader>i <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> <leader>k <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> <leader>r <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> <leader>R <cmd>lua vim.lsp.buf.rename()<CR>
nnoremap <silent> <leader>cs <cmd>lua vim.lsp.buf.incoming_calls()<CR>
nnoremap <silent> <leader>ds <cmd>lua vim.lsp.buf.document_symbol()<CR>
nnoremap <silent> K <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> <leader>q :cclose<CR>
