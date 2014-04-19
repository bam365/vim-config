## vim-config

To do this, you will need to have installed

- python2
- git

Also, there are tons of additional dependencies for some of the plugins to operate correctly:

- gcc
- go
- scala
- via opam: ocaml, merlin
- ctags
- nodejs (for jshint)
- ...and probably more

To bootstrap vim:

1. Copy the .vimrc from this repo to ~/.vimrc
2. Run the vim-bootstrap.py script:

        python2 pathogen-init.py ~/.vim
        # OR, if your default python is python2:
        python pathogen-init.py ~/.vim

The argument to vim-bootstrap.py is your user's vim config directory. This will vary on Windows or Mac.
