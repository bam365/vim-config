#!/bin/sh
mkdir -p ~/.vim/bam
mkdir -p ~/.config/nvim
cp .vimrc ~/.vim
cp bam/*.vim ~/.vim/bam
cp init.vim ~/.config/nvim
python2 nvim-bootstrap.py

echo ""
echo "nvim setup complete. Don't forget to install outside deps: "
echo ""
echo "ctags"
echo "opam"
echo "intero"
echo "ghc-mod"
echo "ripgrep"
echo "fzy"
