local telescope_builtin = require"telescope.builtin"

vim.keymap.set("n", "<leader>fs", telescope_builtin.find_files, {})
vim.keymap.set("n", "<leader>ps", telescope_builtin.git_files, {})
