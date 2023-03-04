-- Big cursor
vim.opt.guicursor = ""

-- Line numbers
vim.opt.nu = true
vim.opt.relativenumber = true

-- Indentation
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = false

vim.opt.smartindent = true

-- Yes, I hate line wrapping
vim.opt.wrap = false

-- No backups buuut let's have long term undo-trees
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- Searching
vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.termguicolors = true

-- Self-explanable
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"

--[[ Might want this later
vim.opt.colorcolumn = "80"
--]]

-- Space is a nice leader key !
vim.g.mapleader = " "

-- I know... I am a disgrace...
vim.opt.virtualedit = "onemore"
