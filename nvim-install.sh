#!/bin/sh
mkdir -p ~/.vim/bam
mkdir -p ~/.vim/backup
mkdir -p ~/.vim/swap
mkdir -p ~/.vim/undo
mkdir -p ~/.vim/session
mkdir -p ~/.config/nvim
cp .vimrc ~
cp nvim-plugins.vim ~/.vim/plugins.vim
cp bam/*.vim ~/.vim/bam
cp init.vim ~/.config/nvim
cp kalisi.vim ~/.vim/bundle/vim-airline-themes/autoload/airline/themes

curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# python2 nvim-bootstrap.py

echo ""
echo "nvim setup complete. Don't forget to install outside deps: "
echo ""
echo "OS Packages: ctags, opam, fzy"
echo "stack: intero, ghc-mod"
echo "cargo: ripgrep"
echo "npm: tern, jsctags, ocaml-language-server"
