vim.g.mapleader = " "
vim.keymap.set("n", "<leader>o", vim.cmd.Ex)

-- the holy jk
vim.keymap.set("i", "jk", "<Esc>")

-- crazy move while selected
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- keep cursor in place with J 
vim.keymap.set("n", "J", "mzJ`z")

-- keep cursor in middle 
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- the greatest remap ever
vim.keymap.set("x", "<leader>p", "\"_dP")

-- SYSTEM CLIPBOARD
vim.keymap.set("n", "y", "\"+y")
vim.keymap.set("n", "p", "\"*p")


-- mason
vim.keymap.set("n", "<leader>pm", ":Mason<CR>")

-- lazygit 
vim.keymap.set("n", "<leader>gg", ":LazyGit<CR>")
