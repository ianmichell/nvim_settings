vim.o.hlsearch = false
vim.wo.number = true
vim.o.mouse = 'a'
vim.o.clipboard = 'unnamedplus'
vim.o.breakindent = true
vim.o.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.o.undofile = false
vim.o.ignorecase = true
vim.o.smartcase = true
vim.wo.signcolumn = 'yes'
vim.o.updatetime = 250
vim.o.timeout = true
vim.o.timeoutlen = 300

vim.o.completeopt = "menuone,noselect"
vim.termguicolors = true


vim.o.guicursor = ""
vim.o.relativenumber = true

vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.smartindent = true
vim.o.wrap = false

vim.o.swapfile = false
vim.o.backup = false
vim.o.incsearch = true

vim.o.scrolloff = 8
vim.o.signcolumn = "yes"
--vim.o.isfname:append("@-@")
vim.o.colorcolumn = "80"
