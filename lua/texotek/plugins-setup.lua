vim.cmd([[
    augroup packer_user_config
        autocmd!
        autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
    augroup end
]])

local status, packer = pcall(require, "packer")
if not status then
	return
end

return packer.startup(function(use)
	use("wbthomason/packer.nvim")
	-- Dependencies
	use("nvim-lua/plenary.nvim")
    use("kyazdani42/nvim-web-devicons")
    -- Colorscheme
    use("tomasiser/vim-code-dark")
    use("sainnhe/gruvbox-material")
    use("sainnhe/everforest")
    use("Abstract-IDE/Abstract-cs")
    use("savq/melange")
    use("kaiuri/nvim-juliana")
    -- vim-tmux navigation
    use("christoomey/vim-tmux-navigator")
    -- buffer
    use 'matbme/JABS.nvim'
    -- statusline
    use {'ojroques/nvim-hardline'}
    -- fuzzy finder
    use {'nvim-telescope/telescope.nvim'}
    -- directory
    use {'nvim-tree/nvim-tree.lua'}
    -- Quality of Life
    use {'folke/which-key.nvim'}
    use 'karb94/neoscroll.nvim'
    use {'gelguy/wilder.nvim'}
    use {'windwp/nvim-ts-autotag'}
    use {'windwp/nvim-autopairs'}

    -- LSP
    use "neovim/nvim-lspconfig"
    use "williamboman/mason-lspconfig.nvim"
    use { "williamboman/mason.nvim" }
    -- Completion
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use "hrsh7th/nvim-cmp"
    -- Snippets
    use 'L3MON4D3/LuaSnip'
    use 'saadparwaiz1/cmp_luasnip'
    -- Treesitter
    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}


	if packer_bootstrap then
		require("packer").sync()
	end
end)
