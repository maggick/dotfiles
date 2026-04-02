require("nvim-tree").setup()

--NVimtree shortcuts
local api = require("nvim-tree.api")
api.adaptive_size = true
vim.keymap.set('n', '<leader>t',api.tree.toggle)

