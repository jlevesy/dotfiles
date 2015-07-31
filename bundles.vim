set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#rc()

"github based bundles

"General
Bundle 'gmarik/vundle'

"Indent guides
Bundle 'nathanaelkane/vim-indent-guides'
let g:indent_guides_auto_colors=0
hi IndentGuidesOdd  guibg=red   ctermbg=3
hi IndentGuidesEven guibg=green ctermbg=4

"Automatic closing curly, brackets, tag... whatever needs to be closed
Bundle 'Raimondi/delimitMate'

"Syntax checker
Bundle 'scrooloose/syntastic'
" Enable it on file open
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq  = 1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_loc_list_height=5
let g:syntastic_ruby_checkers=['rubocop']
let g:syntastic_ruby_rubocop_exec='~/bin/rubocop-wrapper'
let g:syntastic_coffee_checkers = ['coffeelint', 'coffee']
let g:syntastic_python_checkers=['pep8']

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
:nnoremap <C-b>:BuffergatorToggle
"AirLine
Bundle 'bling/vim-airline'
set laststatus=2
let g:Powerline_symbols = 'fancy'
let g:airline_powerline_fonts = 1

Bundle 'kchmck/vim-coffee-script'
Bundle 'skalnik/vim-vroom'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'ekalinin/dockerfile.vim'
Bundle 'mustache/vim-mustache-handlebars'
let g:mustache_abbreviations = 1
Bundle 'solarnz/thrift.vim'
Bundle 'rking/ag.vim'
Bundle 'Matt-Deacalion/vim-systemd-syntax'
Bundle 'fatih/vim-go'
