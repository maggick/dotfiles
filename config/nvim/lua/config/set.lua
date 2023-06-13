vim.opt.guicursor = ""

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 15
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "100"

vim.o.breakindent = true

vim.opt.list = true
vim.opt.listchars = {nbsp='¤',tab='··',trail='¤',extends='▶',precedes='◀'}

vim.g.vimtex_view_method = 'zathura'

vim.opt.inccommand = 'split'

vim.opt.undofile = true

vim.o.ignorecase = true
vim.o.smartcase = true

vim.o.completeopt = 'menuone,noselect'

