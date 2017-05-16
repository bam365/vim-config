" neco-ghc completion
let g:haskellmode_completion_ghc = 0
setlocal omnifunc=necoghc#omnifunc

" Process management:
nmap <buffer> <Leader>mio :InteroOpen<CR>
nmap <buffer> <Leader>hik :InteroKill<CR>
nmap <buffer> <Leader>mic :InteroHide<CR>
nmap <buffer> <Leader>mil :InteroLoadCurrentModule<CR>

" REPL commands
nmap <buffer> <Leader>me :InteroEval<CR>
nmap <buffer> <Leader>mt :InteroGenericType<CR>
nmap <buffer> <Leader>mT :InteroType<CR>
nmap <buffer> <Leader>mi :InteroInfo<CR>
nmap <buffer> <Leader>mI :InteroTypeInsert<CR>

" Go to definition:
nnoremap <Leader>md :InteroGoToDef<CR>

" Highlight uses of identifier:
nnoremap <Leader>mr :InteroUses<CR>

" Reload the file in Intero after saving
autocmd! BufWritePost *.hs InteroReload
