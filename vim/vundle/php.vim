Plugin 'w0rp/ale'

Plugin 'phpactor/phpactor'
" Omni-completion

autocmd FileType php setlocal omnifunc=phpactor#Complete

" Include use statement
map <Leader>u :call phpactor#UseAdd()<CR>
map <Leader>e :call phpactor#ClassExpand()<CR>
map <Leader>pp :call phpactor#ContextMenu()<CR>
map <Leader>o :call phpactor#GotoDefinition()<CR>
map <Leader>pd :call phpactor#OffsetTypeInfo()<CR>
map <Leader>pfm :call phpactor#MoveFile()<CR>
map <Leader>pfc :call phpactor#CopyFile()<CR>
map <Leader>tt :call phpactor#Transform()<CR>
map <Leader>cc :call phpactor#ClassNew()<CR>
map <Leader>fr :call phpactor#FindReferences()<CR>

" Show information about "type" under cursor including current frame
nnoremap <silent><Leader>d :call phpactor#OffsetTypeInfo()<CR>

Plugin 'lumiliet/vim-twig'
Plugin 'stephpy/vim-php-cs-fixer'

let g:php_cs_fixer_rules = "@PSR2"          " options: --rules (default:@PSR2)
" End of php-cs-fixer version 2 config params

let g:php_cs_fixer_php_path = "php"               " Path to PHP
let g:php_cs_fixer_enable_default_mapping = 1     " Enable the mapping by default (<leader>pcd)
let g:php_cs_fixer_dry_run = 0                    " Call command with dry-run option
let g:php_cs_fixer_verbose = 0                    " Return the output of command if 1, else an inline information.
