set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc

lua << EOF
    local base_lsp_attach = function(client)
        -- See `:help nvim_buf_set_keymap()` for more information
        vim.api.nvim_buf_set_keymap(0, 'n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', {noremap = true})
        vim.api.nvim_buf_set_keymap(0, 'n', '<c-]>', '<cmd>lua vim.lsp.buf.definition()<CR>', {noremap = true})
        vim.api.nvim_buf_set_keymap(0, 'n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', {noremap = true})
        vim.api.nvim_buf_set_keymap(0, 'n', 'gh', '<cmd>lua vim.lsp.buf.signature_help()<CR>', {noremap = true})
        vim.api.nvim_buf_set_keymap(0, 'n', 'gt', '<cmd>lua vim.lsp.buf.type_definition()<CR>', {noremap = true})
        vim.api.nvim_buf_set_keymap(0, 'n', 'ge', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', {noremap = true})
        -- ... and other keymappings for LSP

        -- Use LSP as the handler for omnifunc.
        --    See `:help omnifunc` and `:help ins-completion` for more information.
        vim.api.nvim_buf_set_option(0, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

        -- For plugins with an `on_attach` callback, call them here. For example:
        -- require('completion').on_attach()
    end

    require'lspconfig'.pyright.setup{on_attach=base_lsp_attach}
    require'lspconfig'.tsserver.setup{on_attach=base_lsp_attach}
EOF

lua << EOF
require('telescope').setup{
    defaults = { 
        prompt_position = "bottom"    
    }
}
EOF

"call deoplete#enable()
