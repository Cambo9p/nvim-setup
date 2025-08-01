vim.g.mapleader = " "
vim.keymap.set("n", "<leader>o", vim.cmd.Ex)

-- the holy jk
--vim.keymap.set("i", "jk", "<Esc>")
-- vim.keymap.set("i", "ne", "<Esc>")
-- remap arrows to esc while i figure out miryoku
vim.keymap.set("i", "<Down><Up>", "<Esc>")

-- crazy move while selected
--vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
--vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- keep cursor in place with J 
vim.keymap.set("n", "J", "mzJ`z")

-- keep cursor in middle 
vim.keymap.set("n", "<C-d>", "<C-d>zvzz")
vim.keymap.set("n", "<C-u>", "<C-u>zvzz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- the greatest remap ever
vim.keymap.set("x", "<leader>p", "\"_dP")

-- SYSTEM CLIPBOARD
vim.keymap.set("n", "yy", "\"+yy")
vim.keymap.set("n", "y", "\"+y")
vim.keymap.set("n", "p", "\"+p")

-- mason
vim.keymap.set("n", "<leader>pm", ":Mason<CR>")

-- lazygit 
vim.keymap.set("n", "<leader>gg", ":LazyGit<CR>")

-- easy save with corne
vim.keymap.set("n", "<leader>w", ":w<CR>")
vim.keymap.set("n", "<leader>q", ":wq<CR>")

-- auto comment
--vim.keymap.set("n", "<leader>/", "m`I//<Esc>``")
--vim.keymap.set("v", "<leader>/", ":s/^///<CR>")

-- quickfix list
vim.keymap.set("n", "<leader>tn", ":cnext<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>te", ":cprev<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>cc", ":cclose<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>co", ":copen<CR>", { noremap = true, silent = true })

-- navigating splits 
vim.keymap.set("n", "<C-up>", "<C-w><up>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-left>", "<C-w><left>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-down>", "<C-w><down>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-right>", "<C-w><right>", { noremap = true, silent = true })


vim.keymap.set("n", "<M-,>", "<C-w>5<", { noremap = true, silent = true })
vim.keymap.set("n", "<M-.>", "<C-w>5>", { noremap = true, silent = true })
vim.keymap.set("n", "<M-k>", "<C-w>+>", { noremap = true, silent = true })
vim.keymap.set("n", "<M-h>", "<C-w>->", { noremap = true, silent = true })




-- tj's stuff



function ToggleComment()
    local save_cursor = vim.fn.getpos('.')
    vim.cmd('normal! ^')

    if vim.fn.matchstr(vim.fn.getline('.'), '^//') ~= '' then
        vim.cmd('normal! 2x')
    else
        vim.cmd('normal! I//')
    end

    vim.fn.setpos('.', { save_cursor[1], save_cursor[2], save_cursor[3]+ 2, save_cursor[4] })
end

vim.api.nvim_set_keymap('n', '<leader>/', ':lua ToggleComment()<CR>', { noremap = true, silent = true })


