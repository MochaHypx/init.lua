vim.g.mapleader = " "

vim.keymap.set("n", "<leader>zz", vim.cmd.Ex)

-- Holy fucking shit, tabs!
vim.keymap.set("n", "<leader>tn", vim.cmd.tabnew)
vim.keymap.set("n", "<leader>tc", vim.cmd.tabclose)

vim.keymap.set("n", "<leader>t<RIGHT>", vim.cmd.tabnext)
vim.keymap.set("n", "<leader>t<LEFT>", vim.cmd.tabprevious)
