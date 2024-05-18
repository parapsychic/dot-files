return require("packer").startup(function(use)
	-- Packer can manage itself
	use("wbthomason/packer.nvim")
	use("kyazdani42/nvim-web-devicons")

	-- Themes
	--use 'EdenEast/nightfox.nvim'
	use("sam4llis/nvim-tundra")
	use("kyazdani42/nvim-tree.lua")

	-- Notify
	use("rcarriga/nvim-notify")
	-- Lualine
	use("nvim-lualine/lualine.nvim")
	-- Tabs
	use("romgrk/barbar.nvim")
	-- LSP Config
	use({
		"williamboman/mason.nvim", -- Automatic LS installation
		"williamboman/mason-lspconfig.nvim", -- Lspconfig x Mason
		"neovim/nvim-lspconfig", -- Lsp
	})
	--Emmett
	use("mattn/emmet-vim")

	use("jose-elias-alvarez/null-ls.nvim") -- Formatting

	use("folke/lsp-colors.nvim") -- Diagnostic colors
	use({
		"folke/trouble.nvim", -- Diagnostics
		requires = "kyazdani42/nvim-web-devicons",
	})

	use("hrsh7th/nvim-cmp") -- Autocompletion plugin
	use("hrsh7th/cmp-nvim-lsp") -- LSP source for nvim-cmp
	use("hrsh7th/cmp-path") -- Path completion for cmp
	use("saadparwaiz1/cmp_luasnip") -- Snippets source for nvim-cmp
	use("L3MON4D3/LuaSnip") -- Snippets plugin
	use("rafamadriz/friendly-snippets")
	use("onsails/lspkind.nvim") -- Adds icons to autocomplete

	-- Discord RPC
	use("andweeb/presence.nvim")

	-- Auto pairs
	use("windwp/nvim-autopairs")
	use("windwp/nvim-ts-autotag")

	-- Treesitter
	use({
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
	})
	use("nvim-treesitter/nvim-treesitter-refactor")
	use("p00f/nvim-ts-rainbow")
	use("folke/twilight.nvim")

	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.0",
		requires = { { "nvim-lua/plenary.nvim" } },
	})
end)
