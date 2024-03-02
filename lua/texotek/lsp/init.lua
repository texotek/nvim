local lsp_zero_status_ok, lsp_zero = pcall(require, 'lsp-zero')
if not lsp_zero_status_ok then
    return
end
local snip_status_ok, luasnip = pcall(require, "luasnip")
if not snip_status_ok then
    return
end
local inlayhints_status_ok, inlayhints = pcall(require, "lsp-inlayhints")
if not inlayhints_status_ok then
    return
end
local hover_status_ok, hover = pcall(require, "hover")
if not hover_status_ok then
    return
end


lsp_zero.on_attach(function(client, bufnr)
    local opts = { buffer = bufnr, remap = false }

    vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
    vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)

    vim.keymap.set("n", "<leader>la", function() vim.lsp.buf.code_action() end, opts)
    vim.keymap.set("n", "<leader>ln", function() vim.lsp.buf.rename() end, opts)
    vim.keymap.set("n", "<leader>lf", function() vim.lsp.buf.format() end, opts)
    vim.keymap.set("n", "<leader>lws", function() vim.lsp.buf.workspace_symbol() end, opts)
    vim.keymap.set("n", "<leader>ld", function() vim.diagnostic.open_float() end, opts)


    vim.keymap.set("n", "gd", '<CMD>Glance definitions<CR>', opts)
    vim.keymap.set("n", "gr", '<CMD>Glance references<CR>', opts)
    vim.keymap.set("n", "gt", '<CMD>Glance type_definitions<CR>', opts)
    vim.keymap.set("n", "gi", '<CMD>Glance implementations<CR>', opts)

    vim.keymap.set("n", "K", function () hover.hover() end, opts)
    vim.keymap.set("n", "gK", function () hover.hover_select() end, opts)

    inlayhints.on_attach(client, bufnr)
end)

-- to learn how to use mason.nvim with lsp-zero
-- read this: https://github.com/VonHeikemen/lsp-zero.nvim/blob/v3.x/doc/md/guides/integrate-with-mason-nvim.md
require('mason').setup({})
require('mason-lspconfig').setup({
    ensure_installed = { 'tsserver' },
    handlers = {
        lsp_zero.default_setup,
        rust_analyzer = function() end,
        lua_ls = function()
            local lua_opts = lsp_zero.nvim_lua_ls()
            require('lspconfig').lua_ls.setup(lua_opts)
        end,
        clangd = function()
            require('lspconfig').clangd.setup({
                cmd = {
                    "clangd",
                    "--background-index",
                    "--clang-tidy",
                    "--header-insertion=iwyu",
                    "--completion-style=detailed",
                    "--function-arg-placeholders",
                    "--fallback-style=llvm",
                    "--header-insertion=never",
                },
            })
        end
    }
})

local cmp = require('cmp')
local cmp_select = { behavior = cmp.SelectBehavior.Select }

-- this is the function that loads the extra snippets to luasnip
-- from rafamadriz/friendly-snippets
require('luasnip.loaders.from_vscode').lazy_load()

cmp.setup({
    sources = {
        { name = 'path' },
        { name = 'nvim_lsp' },
        { name = 'nvim_lua' },
        { name = 'luasnip', keyword_length = 2 },
        { name = 'buffer',  keyword_length = 3 },
    },
    formatting = {
        format = function(entry, vim_item)
            vim_item.menu = entry:get_completion_item().detail
            return vim_item
        end
    },
    mapping = {
        ["<C-k>"] = cmp.mapping.select_prev_item(),
        ["<C-j>"] = cmp.mapping.select_next_item(),
        ["<C-b>"] = cmp.mapping(cmp.mapping.scroll_docs(-4), { "i", "c" }),
        ["<C-f>"] = cmp.mapping(cmp.mapping.scroll_docs(4), { "i", "c" }),
        ["<C-Space>"] = cmp.mapping(cmp.mapping.complete(), { "i", "c" }),
        ["<C-y>"] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
        ["<C-e>"] = cmp.mapping({
            i = cmp.mapping.abort(),
            c = cmp.mapping.close(),
        }),
        -- Accept currently selected item. If none selected, `select` first item.
        -- Set `select` to `false` to only confirm explicitly selected items.
        ["<CR>"] = cmp.mapping.confirm({ select = true }),
        ["<Tab>"] = cmp.mapping(function(fallback)
            -- if cmp.visible() then
            --   cmp.select_next_item()
            -- You could replace the expand_or_jumpable() calls with expand_or_locally_jumpable()
            -- that way you will only jump inside the snippet region
            if luasnip.expand_or_locally_jumpable() then
                luasnip.jump(1)
            else
                fallback()
            end
        end, { "i", "s" }),


        ["<S-Tab>"] = cmp.mapping(function(fallback)
            -- if cmp.visible() then
            --   cmp.select_prev_item()
            if luasnip.locally_jumpable(-1) then
                luasnip.jump(-1)
            else
                fallback()
            end
        end, { "i", "s" }),
    },
})
