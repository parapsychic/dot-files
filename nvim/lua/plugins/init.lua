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

local plugins = {

  ("kyazdani42/nvim-web-devicons"),

  -- debugger
  ({
    "rcarriga/nvim-dap-ui",
    dependencies = "mfussenegger/nvim-dap",
  }),
  ("theHamsta/nvim-dap-virtual-text"),

  -- Themes
  -- 'EdenEast/nightfox.nvim'
  ("sam4llis/nvim-tundra"),
  ("kyazdani42/nvim-tree.lua"),

  -- Notify
  ("rcarriga/nvim-notify"),
  -- Lualine
  ("nvim-lualine/lualine.nvim"),
  -- Tabs
  ("romgrk/barbar.nvim"),
  -- LSP Config
  ({
    "williamboman/mason.nvim",           -- Automatic LS installation
    "williamboman/mason-lspconfig.nvim", -- Lspconfig x Mason
    "neovim/nvim-lspconfig",             -- Lsp
  }),
  --Emmett
  ("mattn/emmet-vim"),

  ("jose-elias-alvarez/null-ls.nvim"), -- Formatting

  ("folke/lsp-colors.nvim"), -- Diagnostic colors
  ({
    "folke/trouble.nvim",    -- Diagnostics
    dependencies = "kyazdani42/nvim-web-devicons",
  }),

  ("hrsh7th/nvim-cmp"),         -- Autocompletion plugin
  ("hrsh7th/cmp-nvim-lsp"),     -- LSP source for nvim-cmp
  ("hrsh7th/cmp-path"),         -- Path completion for cmp
  ("saadparwaiz1/cmp_luasnip"), -- Snippets source for nvim-cmp
  ("L3MON4D3/LuaSnip"),         -- Snippets plugin
  ("rafamadriz/friendly-snippets"),
  ("onsails/lspkind.nvim"),     -- Adds icons to autocomplete

  -- Discord RPC
  ("andweeb/presence.nvim"),

  -- Auto pairs
  ("windwp/nvim-autopairs"),
  ("windwp/nvim-ts-autotag"),

  -- Treesitter
  ({
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
  }),
  ("nvim-treesitter/nvim-treesitter-refactor"),
  ("p00f/nvim-ts-rainbow"),
  ("folke/twilight.nvim"),

  ({ 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' }),

  ({
    "nvim-telescope/telescope.nvim",
    tag = "0.1.4",
    dependencies = { { "nvim-lua/plenary.nvim" } },
  }),

  -- Rust specific
  {
  'mrcjkb/rustaceanvim',
  version = '^3', -- Recommended
  ft = { 'rust' },
  }
}

require("lazy").setup(plugins, opts)
