#!/usr/bin/env python2
import os
import errno
import urllib
import sys

packages = [
    ("bam365", "vim-bamft"),
    ("tomasr", "molokai"),
    ("vim-scripts", "EasyGrep"),
    ("vim-airline", "vim-airline"),
    ("vim-airline", "vim-airline-themes"),
    ("pangloss", "vim-javascript"),
    ("scrooloose","nerdtree"),
    ("scrooloose","syntastic"),
    ("vim-scripts","taglist.vim"),
    ("tpope","vim-markdown"),
    ("tpope","vim-fugitive"),
    ("tpope","vim-commentary"),
    ("derekwyatt","vim-scala"),
    ("fatih","vim-go"),
    ("mattn", "emmet-vim"),
    ("raichoo", "purescript-vim"),
    ("ctrlpvim", "ctrlp.vim"),
    ("terryma", "vim-expand-region"),
    ("godlygeek", "tabular"),
    ("Valloric", "YouCompleteMe"),
    ("Quramy", "tsuquyomi"),
    ("leafgarland", "typescript-vim"),
    ("Shougo", "vimproc.vim"),
    ("majutsushi", "tagbar"),
    ("jnurmine", "Zenburn")
]

def mkdir_p(path):
    try:
        os.makedirs(path)
    except OSError as exc:
        if exc.errno == errno.EEXIST and os.path.isdir(path):
            pass
        else:
            raise

def get_y_or_n(prompt):
    answer = raw_input(prompt + " [Y/n] ")
    if answer == "": return True
    else: return answer[:1].lower() == "y"


def check_base(base):
    return os.path.isdir(base)


def init_pathogen(base):
    mkdir_p("%s/autoload" % base)
    mkdir_p("%s/bundle" % base)

    url = 'http://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim'
    print "Getting pathogen.vim..."
    urllib.urlretrieve(url, "%s/autoload/pathogen.vim" % base)
    print "DONE getting pathogen.vim"


def install_packages(base):
    for package in packages:
        user, repo = package[0], package[1]
        repodir = "%s/bundle/%s" % (base, repo)
        if os.path.isdir(repodir):
            print "Skipping package %s/%s, already exists" % (user, repo)
        else:
            os.system("git clone http://github.com/%s/%s %s/bundle/%s" % (user, repo, base, repo))
     
def main():
    vimbase = os.path.expanduser(sys.argv[1] if len(sys.argv) > 1 else "~/.vim")
    if check_base(vimbase):
        if get_y_or_n("Ok to bootstrap to %s? " % vimbase):
            print "Initializing pathogen..."
            init_pathogen(vimbase)
            print "DONE initializing pathogen"
            print "Installing vim packages..."
            install_packages(vimbase)
            print "DONE installing vim packages"
            print "pathogen bootstrapped"
            os.system("cp kalisi.vim ~/.vim/bundle/vim-airline-themes/autoload/airline/themes")
            print "Copied airline theme"
    else:
        print "%s is not a valid directory" % (vimbase)


main()
