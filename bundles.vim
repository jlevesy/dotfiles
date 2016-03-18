set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#rc()

"github based bundles

"General
Plugin 'gmarik/vundle'

"Indent guides
Plugin 'nathanaelkane/vim-indent-guides'
let g:indent_guides_auto_colors=0
hi IndentGuidesOdd  guibg=red   ctermbg=3
hi IndentGuidesEven guibg=green ctermbg=4

"Automatic closing curly, brackets, tag... whatever needs to be closed
Plugin 'Raimondi/delimitMate'

"Syntax checker
Plugin 'scrooloose/syntastic'
" Enable it on file open
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq  = 0
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_loc_list_height=5
let g:syntastic_ruby_checkers=['rubocop']
let g:syntastic_ruby_rubocop_exec='~/bin/rubocop-wrapper'
let g:syntastic_coffee_checkers = ['coffeelint', 'coffee']
let g:syntastic_python_checkers=['pep8']
let g:syntastic_go_checkers = ['gometalinter']
let g:syntastic_go_gometalinter_args = ['--fast']

"NERDTree
Plugin 'scrooloose/nerdtree'

"NERDCommenter
Plugin 'scrooloose/nerdcommenter'

" General Auto completion
Plugin 'Valloric/YouCompleteMe'
" Setup
let g:ycm_add_preview_to_completeopt=0
let g:ycm_confirm_extra_conf=0
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'
set completeopt-=preview

" CtrlP
Plugin 'kien/ctrlp.vim'
set wildignore+=*/bower_components/*,*/dist/*,*/node_modules/*
set wildignore+=*/tmp/*,*/public/*

" Setup for xml and html omni complete
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags noci
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags noci

"Js support
Plugin 'jelera/vim-javascript-syntax'
Plugin 'pangloss/vim-javascript'
"Js Autocompletion hook 4 YCM
Plugin 'marijnh/tern_for_vim'

"Whitespace handling
Plugin 'bronson/vim-trailing-whitespace'

"Git
Plugin 'tpope/vim-fugitive'

:nnoremap <leader>gb :Gblame<CR>
:nnoremap <leader>gs :Gstatus<CR>
:nnoremap <leader>gd :Gdiff<CR>
:nnoremap <leader>gl :Glog<CR>
:nnoremap <leader>gc :Gcommit<CR>
:nnoremap <leader>gp :Git push<CR>

"BufferGator
Plugin 'jeetsukumaran/vim-buffergator'
:nnoremap <C-b>:BuffergatorToggle
"AirLine
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
set laststatus=2
let g:Powerline_symbols = 'fancy'
let g:airline_powerline_fonts = 1

Plugin 'kchmck/vim-coffee-script'
Plugin 'skalnik/vim-vroom'
Plugin 'easymotion/vim-easymotion'
Plugin 'ekalinin/dockerfile.vim'
Plugin 'mustache/vim-mustache-handlebars'
let g:mustache_abbreviations = 1
Plugin 'solarnz/thrift.vim'
Plugin 'rking/ag.vim'
Plugin 'Matt-Deacalion/vim-systemd-syntax'
Plugin 'KabbAmine/zeavim.vim'
Plugin 'JamshedVesuna/vim-markdown-preview'
let vim_markdown_preview_hotkey='<C-m>'
