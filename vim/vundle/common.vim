Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-surround'

" Git
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rhubarb'
Plugin 'airblade/vim-gitgutter'

" FuzzyFileSearch
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
nmap <c-p> :Files<CR>
nmap ; :Buffers<CR>

" FuzzySearch
Plugin 'mileszs/ack.vim'

" Whitespace handling
Plugin 'bronson/vim-trailing-whitespace'

" Closing tags
Plugin 'docunext/closetag.vim'

" AirLine
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
let g:airline_powerline_fonts = 1
let g:airline_theme = 'minimalist'
let g:airline_skip_empty_sections = 1
set laststatus=2

" DistractionFreeMode
Plugin 'junegunn/goyo.vim'


cnoreabbrev Ack Ack!
nnoremap <Leader>a :Ack<Space>

if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif
