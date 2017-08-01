Plugin 'fatih/vim-go'
nmap <leader>t <Plug>(go-alternate-edit)
nmap <leader>tt <Plug>(go-test)
nmap <leader>rt <Plug>(go-test-func)
nmap <leader>i <Plug>(go-import)
nmap <leader>l <Plug>(go-lint)
nmap <leader>ll <Plug>(go-metalinter)
nmap <leader>v <Plug>(go-vet)
nmap <leader>o <Plug>(go-doc-split)
nmap <leader>d <Plug>(go-def-split)
nmap <leader>r <Plug>(go-rename)
nmap <leader>b <Plug>(go-build)

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

Plugin 'Shougo/neocomplete'
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#enable_auto_select = 1
set completeopt=longest,menuone

inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <expr> <C-n> pumvisible() ? '<C-n>' :
      \ '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
inoremap <expr> <M-,> pumvisible() ? '<C-n>' :
      \ '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

Plugin 'majutsushi/tagbar'
nmap <F12> :TagbarToggle<CR>
