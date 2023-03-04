-- Set <leader> to space
vim.g.mapleader = " "

-- In normal mode, when <leader>pv is pressed, activate the vim command "vim.cmd.Ex"
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- When text is selected, move it up and down and in and out of blocks with capital J and K
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Keep the cursor in place when stacking lines
vim.keymap.set("n", "J", "mzJ`z")

-- Keep the cursor in place when half-jumping (ctrl+d and ctrl+u)
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Keep the cursor in place when searching
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- After <leader>p is pressed, keep the current clipboard even after pasting on top of something
vim.keymap.set("x", "<leader>p", "\"_dP")

-- <leader>y goes to the system clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

-- Just no
vim.keymap.set("n", "Q", "<nop")

-- <C-f> to change projects quickly
vim.keymap.set("n", "<C-f>", "<cmd>!tmux neww /home/henry/scripts/tmux-sessionizer<CR>")

-- Self-explanatory
vim.keymap.set("n", "<leader>f", function()
	vim.lsp.buf.format()
end)


-- Quickfix nav
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")

-- Replase currently selected word
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Make executable super easily
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
