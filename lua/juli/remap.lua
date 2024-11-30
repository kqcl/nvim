vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<C-s>", vim.cmd.update)

-- moving lines around
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- navigating
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u", "<C-u>zz")

-- search terms stay in middle
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "nzzzV")

-- preserve buffer after copying over a word
vim.keymap.set("x", "<leader>p", "\"_dP")

-- yank into system clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- replace current word
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- shoutout (source)
vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)

-- enter cmd line
vim.keymap.set("n", ";", ":")

-- enter undofiletree
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
