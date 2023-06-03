# vim-config

## Bootstrap neovim

### For new, init.lua-based setup

This way uses a single init.lua file, based on kickstart.nvim, to do everything. Uses lazy.nvim 

    mv ~/.config/nvim ~/.config/nvim-old
    git clone https://github.com/nvim-lua/kickstart.nvim ~/.config/nvim
    cp init.kickstart.lua ~/.config/nvim/init.lua

Then just run `nvim` and it will install all the dependencies and be good to go.
You still will need to manually install external deps

### For old, vim-compatible .vimrc setup

This way uses a .vimrc and vim-plug. Run

    sh nvim-install.sh

## Bootstrap legacy vim

To bootstrap vim:

1. Copy the .vimrc from this repo to ~/.vimrc
2. Run the vim-bootstrap.py script:

        python2 vim-bootstrap.py ~/.vim
        # OR, if your default python is python2:
        python vim-bootstrap.py ~/.vim

The argument to vim-bootstrap.py is your user's vim config directory. This will vary on Windows or Mac.

