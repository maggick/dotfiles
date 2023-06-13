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

-- The plugins
local plugins = {
  'tpope/vim-fugitive', -- Git commands in nvim
  'godlygeek/tabular', -- make table
  'mboughaba/i3config.vim', -- i3config syntax
  'rhysd/committia.vim', -- better commit view
  'lervag/vimtex', -- latex support in vim
  "williamboman/nvim-lsp-installer",
  { 'nvim-telescope/telescope.nvim', dependencies = { 'nvim-lua/plenary.nvim' }},
  { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
  { 'nvim-lualine/lualine.nvim', dependencies = { 'nvim-tree/nvim-web-devicons'}},
  'lukas-reineke/indent-blankline.nvim', -- Add indentation guides even on blank lines
  { 'lewis6991/gitsigns.nvim', dependencies = { 'nvim-lua/plenary.nvim' } } ,-- Add git related info in the signs columns and popups
  {'nvim-treesitter/nvim-treesitter', build = ':TSUpdate' }, -- Highlight, edit, and navigate code using a fast incremental parsing library
  { 'nvim-tree/nvim-tree.lua', dependencies = { 'nvim-tree/nvim-web-devicons' }} ,-- A file explorer tree for neovim written in lua
  'nvim-treesitter/nvim-treesitter-textobjects', -- Additional textobjects for treesitter
  'nvim-treesitter/nvim-treesitter-context', -- highlight for everything
  'neovim/nvim-lspconfig', -- Collection of configurations for built-in LSP client
  'hrsh7th/nvim-cmp', -- Autocompletion plugin
  'hrsh7th/cmp-nvim-lsp',
  'saadparwaiz1/cmp_luasnip',
  'L3MON4D3/LuaSnip', -- Snippets plugin
  { "folke/todo-comments.nvim", dependencies = "nvim-lua/plenary.nvim" }, -- highlight specific keywords
  'mhinz/vim-startify', -- The fancy start screen for Vim.
  { "catppuccin/nvim", name = "catppuccin" }, -- theme
  "tpope/vim-dispatch", -- build asynchronlsy with :Make
  { "iamcco/markdown-preview.nvim", build = function() vim.fn["mkdp#util#install"]() end, },
  'epwalsh/obsidian.nvim',
  'williamboman/mason.nvim'
}

local opts = {}

require("lazy").setup(plugins, opts)
