local opts = { noremap = true, silent = true }

vim.keymap.set("n", "<M-j>", "<Plug>(qf_qf_next) zz", opts)
vim.keymap.set("n", "<M-k>", "<Plug>(qf_qf_previous) zz", opts)
vim.keymap.set("n", "<M-o>", "<Plug>(qf_qf_toggle) ", opts)


vim.keymap.set("n", "<leader>j", "<Plug>(qf_loc_next) zz", opts)
vim.keymap.set("n", "<leader>k", "<Plug>(qf_loc_previous) zz", opts)
vim.keymap.set("n", "<leader>o", "<Plug>(qf_loc_toggle) ", opts)
