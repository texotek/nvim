return {
    "nvimtools/none-ls.nvim",
    config = function ()
        local null_ls = require("null-ls")
        null_ls.setup({
            null_ls.builtins.formatting.stylua,
            --null_ls.builtins.formatting.clang_format,

            null_ls.builtins.diagnostics.eslint,
            null_ls.builtins.completion.spell,
        })
    end,
}
