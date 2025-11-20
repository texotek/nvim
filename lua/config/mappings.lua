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
        keymap('n', '<C-s>', '<cmd>lua vim.lsp.buf.signature_help()<cr>', opts)
        keymap('n', '<F2>', '<cmd>lua vim.lsp.buf.rename()<cr>', opts)
        keymap({ 'n', 'x' }, '<F3>', '<cmd>lua vim.lsp.buf.format({async = true})<cr>', opts)
        keymap('n', '<F4>', '<cmd>lua vim.lsp.buf.code_action()<cr>', opts)
        keymap("n", "gl", "<cmd>lua vim.diagnostic.open_float()<CR>", opts)
        keymap("n", "]d", "<cmd>lua vim.diagnostic.goto_next()<CR>", opts)
        keymap("n", "[d", "<cmd>lua vim.diagnostic.goto_prev()<CR>", opts)
    end,
})

local telescope_builtin = require('telescope.builtin')
keymap('n', '<C-P>', telescope_builtin.find_files, { desc = 'Telescope find files' })
keymap('n', '<C-S-P>', telescope_builtin.commands, { desc = 'Telescope commands' })
keymap('n', '<leader>fs', telescope_builtin.live_grep, { desc = 'Telescope live grep' })
keymap('n', '<leader>fb', telescope_builtin.buffers, { desc = 'Telescope buffers' })
keymap('n', '<leader>fh', telescope_builtin.help_tags, { desc = 'Telescope help tags' })

keymap('t', '<esc>', [[<C-\><C-n>]])
keymap('t', '<C- >', [[<C-\><C-n>]])
keymap('t', 'jk', [[<C-\><C-n>]])
keymap({ "n", "i", "t", "x" }, '<C-e>', "<CMD>Explore<CR>")


