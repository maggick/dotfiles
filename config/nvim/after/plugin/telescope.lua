-- Enable telescope fzf native
--require('telescope').load_extension 'fzf'
--
--local builtin = require('telescope.builtin')
--vim.keymap.set('n', '<leader><space>', builtin.buffers)
--vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
--vim.keymap.set('n', '<C-p>', builtin.git_files, {})
--vim.keymap.set('n', '<leader>ps', function()
--	builtin.grep_string({ search = vim.fn.input("Grep > ") })
--end)
--vim.keymap.set('n', '<leader>sh', builtin.help_tags, {})