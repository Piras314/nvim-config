-- Set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- Empty setup using defaults
require("nvim-tree").setup()

vim.keymap.set("n", "<Leader>pt", "<cmd>NvimTreeToggle")
