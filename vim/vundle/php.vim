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
