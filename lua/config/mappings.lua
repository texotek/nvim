local keymap = vim.keymap.set

vim.api.nvim_create_autocmd('LspAttach', {
    desc = 'LSP actions',
    callback = function(event)
        local opts = { buffer = event.buf }

        keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>', opts)
        keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>', opts)
        keymap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>', opts)
        keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>', opts)
        keymap('n', 'go', '<cmd>lua vim.lsp.buf.type_definition()<cr>', opts)
        keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>', opts)
        keymap('n', 'gs', '<cmd>lua vim.lsp.buf.signature_help()<cr>', opts)
        keymap('n', '<F2>', '<cmd>lua vim.lsp.buf.rename()<cr>', opts)
        keymap({ 'n', 'x' }, '<F3>', '<cmd>lua vim.lsp.buf.format({async = true})<cr>', opts)
        keymap('n', '<F4>', '<cmd>lua vim.lsp.buf.code_action()<cr>', opts)
        keymap("n", "gl", "<cmd>lua vim.diagnostic.open_float()<CR>", opts)
        keymap("n", "]d", "<cmd>lua vim.diagnostic.goto_next()<CR>", opts)
        keymap("n", "[d", "<cmd>lua vim.diagnostic.goto_prev()<CR>", opts)
    end,
})

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<C-P>', builtin.find_files, { desc = 'Telescope find files' })

vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
