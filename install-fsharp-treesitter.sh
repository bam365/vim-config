#!/bin/sh
git clone https://github.com/ionide/tree-sitter-fsharp
cd tree-sitter-fsharp
echo compiling
gcc -o fsharp.so -shared fsharp/src/parser.c fsharp/src/scanner.c -I./fsharp/src -I./common -fPIC -O2
echo installing
mkdir -p ~/.config/nvim/parser
mkdir -p ~/.config/nvim/queries/fsharp
cp fsharp.so ~/.config/nvim/parser
cp queries/*.scm ~/.config/nvim/queries/fsharp
