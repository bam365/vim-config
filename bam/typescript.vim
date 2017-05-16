setlocal completeopt+=menu,preview

nmap <buffer> <Leader>mt : <C-u>echo tsuquyomi#hint()<CR>
nmap <buffer> <Leader>md :TsuDefinition<CR>
nmap <buffer> <Leader>mD :TsuGoBack<CR>
nmap <buffer> <Leader>mr :TsuReferences<CR>
nmap <buffer> <Leader>ms :TsuSearch<CR>
