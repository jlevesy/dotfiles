nmap <leader>t <Plug>(go-alternate-edit)
nmap <leader>T  <Plug>(go-test)
nmap <leader>rt <Plug>(go-test-func)
nmap <leader>d <Plug>(go-def)
nmap <leader>o <Plug>(go-def-pop)
nmap <leader>r <Plug>(go-rename)
nmap <leader>b <Plug>(go-build)
nmap <leader>c <Plug>(go-callees)
nmap <leader>C <Plug>(go-callers)
nmap <leader>co <Plug>(go-coverage-toggle)
nmap <leader>q :cclose<CR>

setlocal tabstop=8
setlocal softtabstop=8
setlocal shiftwidth=8
setlocal noexpandtab

let g:deoplete#enable_at_startup = 1
call deoplete#custom#option('omni_patterns', { 'go': '[^. *\t]\.\w*' })

let g:go_highlight_array_whitespace_error = 1
let g:go_highlight_chan_whitespace_error = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_methods = 1
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_build_constraints = 1
let g:go_list_height = 5
let g:go_jump_to_error = 0
let g:go_list_type = "quickfix"
let g:go_fmt_command = 'goimports'

let g:go_auto_type_info = 1
let g:go_auto_sameids = 0
let g:go_info_mode = 'gopls'
let g:go_def_mode = 'gopls'
