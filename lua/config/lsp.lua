require('mason').setup({})
require('mason-lspconfig').setup({
    ensure_installed = { 'lua_ls', 'rust_analyzer' },
    handlers = {
        function(server_name)
            require('lspconfig')[server_name].setup({})
        end,
    }
})


local has_words_before = function()
	local line, col = unpack(vim.api.nvim_win_get_cursor(0))
	return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end

vim.api.nvim_create_autocmd('LspAttach', {
    desc = 'LSP actions',
    callback = function(event)
        local opts = { buffer = event.buf }
        local keymap = vim.keymap.set

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
    end,
})

require 'lspconfig'.clangd.setup {}

local cmp = require('cmp')
local luasnip = require('luasnip')

cmp.setup({
    sources = {
        { name = 'nvim_lsp' },
        { name = 'luasnip' },
    },
    snippet = {
        expand = function(args)
            luasnip.lsp_expand(args.body)
        end,
    },
    mapping = cmp.mapping.preset.insert({
      ["<Tab>"] = cmp.mapping(function(fallback)
        if cmp.visible() then
          cmp.select_next_item()
        elseif luasnip.expandable() then
          luasnip.expand()
        elseif luasnip.expand_or_jumpable() then
          luasnip.expand_or_jump()
        elseif has_words_before() then
          -- cmp.complete()
          fallback()
        else
          fallback()
        end
      end, {"i", "s"}),
      ['<CR>'] = cmp.mapping.confirm({select = true}),
    }),
})

vim.diagnostic.config({
    virtual_text = false
})
