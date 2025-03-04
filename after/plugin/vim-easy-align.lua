local opts = { noremap = true, silent = true }
-- Start interactive EasyAlign in visual mode (e.g. vipga)
vim.keymap.set("x", "ga", "<Plug>(EasyAlign)", opts)

-- Start interactive EasyAlign for a motion/text object (e.g. gaip)
vim.keymap.set("n", "ga", "<Plug>(EasyAlign)", opts)
