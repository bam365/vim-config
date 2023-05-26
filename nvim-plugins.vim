call plug#begin('~/local/share/nvim/plugged')

" for telescope (nvim 0.5 only)
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" for nvim 0.5's built-in lsp server
Plug 'neovim/nvim-lspconfig'

"Plug 'scrooloose/syntastic'
"Plug 'Quramy/tsuquyomi'
Plug 'Shougo/vimproc.vim'
"Plug 'autozimu/LanguageClient-neovim', {
"    \ 'branch': 'next',
"    \ 'do': 'bash install.sh',
"    \ }
Plug 'bam365/vim-bamft'
Plug 'cloudhead/neovim-fuzzy'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'derekwyatt/vim-scala'
Plug 'eagletmt/neco-ghc'
Plug 'fatih/vim-go'
Plug 'godlygeek/tabular'
Plug 'jnurmine/Zenburn'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'majutsushi/tagbar'
Plug 'mattn/emmet-vim'
Plug 'mhinz/vim-startify'
Plug 'mileszs/ack.vim'
Plug 'morhetz/gruvbox'
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'pangloss/vim-javascript'
Plug 'python-mode/python-mode'
Plug 'raichoo/purescript-vim'
Plug 'reasonml-editor/vim-reason-plus'
Plug 'scrooloose/nerdtree'
Plug 'ternjs/tern_for_vim'
Plug 'terryma/vim-expand-region'
Plug 'tomasr/molokai'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-markdown'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-scripts/EasyGrep'
Plug 'vim-scripts/taglist.vim'
Plug 'w0rp/ale'

call plug#end()
