map <F1> :NERDTreeToggle<CR>
map <F2> :TlistToggle<CR>
map <F3> :GrepOptions<CR>

let mapleader = "\<SPACE>"

nnoremap <Leader>w :w<CR>
nnoremap <Leader>of :CtrlP<CR>
nnoremap <Leader>or :CtrlPMRU<CR>
nnoremap <Leader>ft :NERDTreeToggle<CR>
nnoremap <Leader>ff :FuzzyOpen<CR>
vmap <Leader>y "+y
vmap <Leader>d "+d
map <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P
vmap <Leader>ww !ww<CR>
nmap <Leader><Leader> V
nmap <Leader>wh <C-w>h
nmap <Leader>wj <C-w>j
nmap <Leader>wk <C-w>k
nmap <Leader>wl <C-w>l
nmap <Leader>ws :mksession 
nmap <Leader>t :tabe<CR>
nmap <Leader>q :q<CR>
nmap <Leader>sv :vsplit<CR>
nmap <Leader>sh :split<CR>
nmap <Leader>gs :Gstatus<CR>
nmap <Leader>gd :Gdiff<CR>
nmap <Leader>gc :Gcommit<CR>
nmap <Leader>gb :Gblame<CR>
nmap <Leader>ge :Gedit<CR>


nmap <silent> <leader>ev :e ~/.vimrc<CR>
nmap <silent> <leader>ep :e ~/.bash_profile<CR>

vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)
