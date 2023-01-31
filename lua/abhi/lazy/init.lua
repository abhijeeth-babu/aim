-- bootstrapping
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

-- plugins
require("lazy").setup({
  'folke/tokyonight.nvim',
	'nvim-lualine/lualine.nvim',
  'akinsho/bufferline.nvim',
	'nvim-tree/nvim-web-devicons',
  "ellisonleao/gruvbox.nvim",
  'nvim-tree/nvim-tree.lua',
  {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
  {
    'nvim-telescope/telescope.nvim',
    version = '0.1.1',
    dependencies = {
      {'nvim-lua/plenary.nvim'},
    },
  },
  { "bluz71/vim-nightfly-colors", name = "nightfly", lazy = true, priority = 1000 },
  {
    "williamboman/mason.nvim",
    'folke/neodev.nvim',
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
  }, 
  {
    "folke/which-key.nvim",
    config = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
    end,
  },
  {
    'nvim-telescope/telescope-fzf-native.nvim',
    build = 'make',
  },
  'nvim-telescope/telescope-symbols.nvim',
  -- completion
  'hrsh7th/cmp-nvim-lsp',
  'hrsh7th/cmp-buffer',
  'hrsh7th/cmp-path',
  'hrsh7th/cmp-cmdline',
  'hrsh7th/nvim-cmp',
  'L3MON4D3/LuaSnip',
  'saadparwaiz1/cmp_luasnip',
  'rafamadriz/friendly-snippets',
  -- formatting
  'jose-elias-alvarez/null-ls.nvim',
  'jay-babu/mason-null-ls.nvim',
  'goolord/alpha-nvim',
  -- debugging
  'mfussenegger/nvim-dap',
  'jayp0521/mason-nvim-dap.nvim',
  'nvim-telescope/telescope-dap.nvim',
  'rcarriga/nvim-dap-ui',
  'theHamsta/nvim-dap-virtual-text',
  'mfussenegger/nvim-dap-python',
  -- comment
  'numToStr/Comment.nvim',
  'JoosepAlviste/nvim-ts-context-commentstring',
  -- autopairs
  'windwp/nvim-autopairs',
  -- indentation
  'lukas-reineke/indent-blankline.nvim',
  -- git
  'lewis6991/gitsigns.nvim',
  -- refactoring
  "ThePrimeagen/refactoring.nvim",
  -- Todo and trouble
  "folke/todo-comments.nvim",
  "folke/trouble.nvim",
})
