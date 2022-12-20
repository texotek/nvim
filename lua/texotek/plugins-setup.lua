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

	-- lua functions that many plugins use
	use("nvim-lua/plenary.nvim")

	-- colorscheme
	use("rakr/vim-one")
    use("dracula/vim")
    use("Mofiqul/vscode.nvim")

    -- Terminal Windows
    use {"akinsho/toggleterm.nvim", tag = '*'}

	-- tmux & split window navigation
	use("christoomey/vim-tmux-navigator")

    use("szw/vim-maximizer")
	-- essential plugins
	use("tpope/vim-surround") -- ys ds cs
	use("vim-scripts/ReplaceWithRegister") -- gs

    -- undo tree
    use("mbbill/undotree")

	-- Comment gcc
	use("numToStr/Comment.nvim") -- gcc

	-- File Explorer
	use("nvim-tree/nvim-tree.lua")

	-- icons
	use("kyazdani42/nvim-web-devicons")

	-- statusline
    use("nvim-lualine/lualine.nvim")
    use("romgrk/barbar.nvim")
    use({"utilyre/barbecue.nvim", config = function () require("barbecue").setup() end})

	-- moving code
	use("matze/vim-move")
	-- fuzzy finding
	use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" }) --dependency
	use({ "nvim-telescope/telescope.nvim", branch = "0.1.x" })
    use("cljoly/telescope-repo.nvim")

    -- rooting projects for telescope
    use("airblade/vim-rooter")

	-- autocompletion
	use("hrsh7th/nvim-cmp")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")

	-- snippets
	use("L3MON4D3/LuaSnip")
	use("saadparwaiz1/cmp_luasnip")
	use("rafamadriz/friendly-snippets")

	-- managing & installing lsp servers, linters & formatters
	use("williamboman/mason.nvim")
	use("williamboman/mason-lspconfig.nvim")

	-- configuring lsp servers
	use("neovim/nvim-lspconfig")
	use("hrsh7th/cmp-nvim-lsp")
	use({ "glepnir/lspsaga.nvim", branch = "main" })
	use("onsails/lspkind.nvim")
    use("SmiteshP/nvim-navic")

	-- formatting & linting
	use("jose-elias-alvarez/null-ls.nvim")
	use("jayp0521/mason-null-ls.nvim")

    -- debugging
    use("mfussenegger/nvim-dap")
    use("mfussenegger/nvim-jdtls")

	-- treesitter
	use({
		"nvim-treesitter/nvim-treesitter",
		run = function()
			local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
			ts_update()
		end,
	})

	-- auto closing
	use("windwp/nvim-autopairs")
	use("windwp/nvim-ts-autotag")

	-- git
    use("tpope/vim-fugitive")
    use("tpope/vim-rhubarb")
	use("lewis6991/gitsigns.nvim")

    -- Competitions
	use({
		"xeluxee/competitest.nvim",
		requires = "MunifTanjim/nui.nvim",
	})

    -- Easymotions
    use("easymotion/vim-easymotion")

    -- syntax hightlighting
    use("baskerville/vim-sxhkdrc")

    use("NvChad/nvim-colorizer.lua")
    use({"ziontee113/color-picker.nvim",
        config = function()
            require("color-picker")
        end,
    })
    -- Support for plugin repeat
    use( "tpope/vim-repeat")

    -- Which key?
    use("folke/which-key.nvim")

    -- Notification
    use("rcarriga/nvim-notify")
	if packer_bootstrap then
		require("packer").sync()
	end
end)
