#!/bin/sh
mkdir -p ~/.vim/bam
mkdir -p ~/.vim/backup
mkdir -p ~/.vim/swap
mkdir -p ~/.vim/undo
mkdir -p ~/.vim/session
mkdir -p ~/.config/nvim
cp bam/*.vim ~/.vim/bam
cp init.vim ~/.config/nvim
cp kalisi.vim ~/.vim/bundle/vim-airline-themes/autoload/airline/themes

curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# python2 nvim-bootstrap.py

nvim -c "PlugInstall" nvim-post.md
