require("zuzlz.remap")
require("zuzlz.paq")
require("zuzlz.set")
require("zuzlz.statusline")


-- #AUTOCOMMANDS

-- go to last loc when opening a buffer
local locationhistGrp = vim.api.nvim_create_augroup("locationhist", { clear = true })
vim.api.nvim_create_autocmd("BufReadPost",
    {
        command = [[if line("'\"") > 1 && line("'\"") <= line("$") | execute "normal! g`\"" | endif]],
        group = locationhistGrp
    })

local cursorGrp = vim.api.nvim_create_augroup("CursorLine", { clear = true })
vim.api.nvim_create_autocmd({ "InsertLeave", "WinEnter" },
    { pattern = "*", command = "set cursorline", group = cursorGrp })
vim.api.nvim_create_autocmd({ "InsertEnter", "WinLeave" },
    { pattern = "*", command = "set nocursorline", group = cursorGrp })


-- Highlight on yank
local yankGrp = vim.api.nvim_create_augroup("YankHighlight", { clear = true })
vim.api.nvim_create_autocmd("TextYankPost", { command = "silent! lua vim.highlight.on_yank()", group = yankGrp })


local formattingGrp = vim.api.nvim_create_augroup("formattingGrp", { clear = true })
vim.api.nvim_create_autocmd("FileType", { command = "set formatoptions-=c", group = formattingGrp })
vim.api.nvim_create_autocmd("FileType", { command = "set formatoptions-=r", group = formattingGrp })
vim.api.nvim_create_autocmd("FileType", { command = "set formatoptions-=o", group = formattingGrp })
vim.api.nvim_create_autocmd("FileType", { command = "set formatoptions+=j", group = formattingGrp })
vim.api.nvim_create_autocmd("FileType", { command = "set formatoptions+=l", group = formattingGrp })
vim.api.nvim_create_autocmd("FileType", { command = "set formatoptions+=n", group = formattingGrp })


local myGroup = vim.api.nvim_create_augroup("myGroup", { clear = true })
vim.api.nvim_create_autocmd({ "BufWritePre" }, {
    group = myGroup,
    pattern = "*",
    command = [[%s/\s\+$//e]],
})
