set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc

lua << EOF
    local custom_lsp_attach = function(client)
      -- See `:help nvim_buf_set_keymap()` for more information
      vim.api.nvim_buf_set_keymap(0, 'n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', {noremap = true})
      vim.api.nvim_buf_set_keymap(0, 'n', '<c-]>', '<cmd>lua vim.lsp.buf.definition()<CR>', {noremap = true})
      -- ... and other keymappings for LSP

      -- Use LSP as the handler for omnifunc.
      --    See `:help omnifunc` and `:help ins-completion` for more information.
      vim.api.nvim_buf_set_option(0, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

      -- For plugins with an `on_attach` callback, call them here. For example:
      -- require('completion').on_attach()
    end

    require'lspconfig'.pyright.setup{}
EOF
"call deoplete#enable()
