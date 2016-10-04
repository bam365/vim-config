#!/bin/bash
git clone https://github.com/vim/vim.git
cd vim
git checkout v7.4.256
./configure \
    --enable-perlinterp \
    --enable-pythoninterp \
    --enable-rubyinterp \
    --enable-cscope \
    --enable-gui=auto \
    --enable-gtk2-check \
    --enable-gnome-check \
    --with-features=huge \
    --enable-multibyte \
    --with-x \
    --with-python-config-dir=$(python-config --configdir)
make
sudo make install
cd ..
python vim-bootstrap.py
cp .vimrc ~
cd ~/.vim/bundle/YouCompleteMe
./install.py --clang-completer --gocode-completer --tern-completer
