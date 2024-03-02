local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    require("texotek.plugins.colorscheme"),         -- Colorscheme
    require("texotek.plugins.transparent"),         -- transparent Background

    require("texotek.plugins.mason"),               -- LSP, Formatter, Debug adapter... Management
    require("texotek.plugins.lsp-zero"),            -- LSP Configuration

    require("texotek.plugins.nvim-cmp"),            -- Nvim-Cmp for Autocompletions
    require("texotek.plugins.lsp_signature"),       -- Signature Help
    require("texotek.plugins.ultimate-autopair"),   -- Autopairs
    require("texotek.plugins.indent-blankline");    --- Indent lines
    require("texotek.plugins.lsp-inlayhints");
    require("texotek.plugins.glance"),
    require("texotek.plugins.hover"),

    require("texotek.plugins.none-ls"),             -- None ls
    require("texotek.plugins.treesitter"),          -- Treesitter Parsing

    require("texotek.plugins.nvim-dap"),            -- Debug Adapter

    require("texotek.plugins.rustacenvim"),         -- Rust tools
    require("texotek.plugins.cmake-tools"),         -- Cmake tools
    require("texotek.plugins.nvim-java"),           -- Java Project

    require("texotek.plugins.telescope"),           -- Telescope for wide variety of Tasks
    require("texotek.plugins.tmux"),
    require("texotek.plugins.which-key"),           -- Which key for keybinds
    require("texotek.plugins.toggleterm"),          -- Toggling Terminal
    require("texotek.plugins.dispatch"),
    require("texotek.plugins.legendary"),
    require("texotek.plugins.undotree"),             -- undotree

    require("texotek.plugins.dressing"),
    --require("texotek.plugins.harpoon"),             -- Quick file switching
},{})

