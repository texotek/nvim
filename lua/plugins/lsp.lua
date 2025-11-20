return {
    {'neovim/nvim-lspconfig'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'hrsh7th/nvim-cmp'},
    {'hrsh7th/cmp-nvim-lsp-signature-help'},
    {'lukas-reineke/cmp-under-comparator'},
    {"williamboman/mason.nvim"},
    {"williamboman/mason-lspconfig.nvim"},
    {"L3MON4D3/LuaSnip"},
    {"onsails/lspkind.nvim"},
    {{
      "ray-x/lsp_signature.nvim",
      event = "InsertEnter",
      opts = {
            bind = true,
            hint_enable = false, -- virtual hint enable
            handler_opts = {
              border = "single"
            }
      },}}
}
