set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

"github based bundles

"General
Bundle 'gmarik/vundle'

"Indent guides
Bundle 'nathanaelkane/vim-indent-guides'

"Automatic closing curly, brackets, tag... whatever needs to be closed
Bundle 'Raimondi/delimitMate'

"Syntax checker
Bundle 'scrooloose/syntastic'
" Enable it on file open
let g:syntastic_check_on_open=1

"NERDTree
Bundle 'scrooloose/nerdtree'

"NERDCommenter
Bundle 'scrooloose/nerdcommenter'

" General Auto completion
Bundle 'Valloric/YouCompleteMe'
" Setup
let g:ycm_add_preview_to_completeopt=0
let g:ycm_confirm_extra_conf=0
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'
set completeopt-=preview

" CtrlP
Bundle 'kien/ctrlp.vim'

" Setup for xml and html omni complete
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags noci
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags noci

"Js support
Bundle 'jelera/vim-javascript-syntax'
Bundle 'pangloss/vim-javascript'
"Js Autocompletion hook 4 YCM
Bundle 'marijnh/tern_for_vim'

"Whitespace handling
Bundle 'bronson/vim-trailing-whitespace'

"Git
Bundle 'tpope/vim-fugitive'

:nnoremap <leader>gb :Gblame<CR>
:nnoremap <leader>gs :Gstatus<CR>
:nnoremap <leader>gd :Gdiff<CR>
:nnoremap <leader>gl :Glog<CR>
:nnoremap <leader>gc :Gcommit<CR>
:nnoremap <leader>gp :Git push<CR>

"BufferGator
Bundle 'jeetsukumaran/vim-buffergator'

"AirLine
Bundle 'bling/vim-airline'
set laststatus=2
let g:Powerline_symbols = 'fancy'
let g:airline_powerline_fonts = 1
