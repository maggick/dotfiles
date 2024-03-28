require("nvim-tree").setup()

--NVimtree shortcuts
local api = require("nvim-tree.api")
vim.keymap.set('n', '<leader>t',api.tree.toggle)

