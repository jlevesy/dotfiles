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
nnoremap <silent><Leader>d :call phpactor#OffsetTypeInfo()<CR>

setlocal expandtab
setlocal shiftwidth=4
setlocal softtabstop=4
setlocal tabstop=4

"Line of death
setlocal textwidth=120
setlocal colorcolumn=+100
setlocal omnifunc=phpactor#Complete

