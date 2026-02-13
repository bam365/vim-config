# vim-config

## Get neovim

You want nvim 0.11.6. A lot of distros won't have anything near the latest version, in which
case, install nix and enable nix flakes, and then install nvim with

```
$ nix profile add nixpkgs#neovim
```
## Copy the config

cp init.lua ~/.config/nvim

## External dependencies

You'll probably need to install all these

- `ripgrep`
- `fzf` and `fzy`
- Language servers
    - `typescript-language-server` (`npm install -g typescript-language-server`)
    - `rust-analyzer` (`rustup component add rust-analyzer`)
    - `fsautocomplete` (`dotnet tool install --global fsautocomplete`)
- The tools at `https://codeberg.org/bam365/bamclitoolsrs`
- probably a bunch of other stuff I'm forgetting

## Major plugins

- nvim-cmp (for auto-completion)
- gruvbox.nvim (colorscheme)
- lualine.nvim (status line)
- telescope.nvim (modal for file finding and grepping)
- nvim-tree (file explorer)
- aerial.nvim (code outlining)
- conform.nvim (code auto-formatting)

## Special notes


### lsp-config

The lsp-config plugin is no longer needed, it's built in. Each server has an entry
under `vim.lsp.config`. Then enable the server with filetype with `vim.lsp.enable('filetype')`

### tree-sitter

The nvim-treesitter plugin is in a weird place rn (just got through an entire,
not-backwards-compatible rewrite), so I'm not using it. tree-sitter integration
is built into nvim itself, so if you want parsers you can just download and
compile them, install the parser to ~/.config/nvim/parser/<filetype>.so, and any
queries to ~/.config/nvim/queries/<filetype>/*.scm. Make sure to call
`vim.treesitter.start()` when opening relevant filetypes

### F#

I don't like the ionide plugin, I prefer just using fsautocomplete for LSP and
tree-sitter for syntax highlighting. Run the script
`install-fsharp-treesitter.sh` to install the tree-sitter parser and queries,
and everything _should_ work.

