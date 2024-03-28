
-- The plugins
return {
  'tpope/vim-fugitive', -- Git commands in nvim
  'godlygeek/tabular', -- make table
  'mboughaba/i3config.vim', -- i3config syntax
  'rhysd/committia.vim', -- better commit view
  'lervag/vimtex', -- latex support in vim
  { 'nvim-telescope/telescope.nvim', dependencies = { 'nvim-lua/plenary.nvim' }},
  { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
  { 'nvim-lualine/lualine.nvim', dependencies = { 'nvim-tree/nvim-web-devicons'}},
  { "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} }, -- Add indentation guides even on blank lines
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
  'williamboman/mason-lspconfig.nvim',
  'williamboman/mason.nvim',
  'theRealCarneiro/hyprland-vim-syntax',
  "mpas/marp-nvim",
}
