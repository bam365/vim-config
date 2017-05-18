#!/bin/sh
mkdir -p ~/.vim/bam
mkdir -p ~/.config/nvim
cp .vimrc ~
cp bam/*.vim ~/.vim/bam
cp init.vim ~/.config/nvim
python2 nvim-bootstrap.py

echo ""
echo "nvim setup complete. Don't forget to install outside deps: "
echo ""
echo "OS Packages: ctags, opam, fzy"
echo "stack: intero, ghc-mod"
echo "cargo: ripgrep"
echo "npm: tern, jsctags"
