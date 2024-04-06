vim.g.mapleader = " "

local opts = { noremap = true, silent = true }

vim.cmd [[ " Show the syntax highlight group under cursor
nnoremap <F10> <cmd>echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
    \ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
    \ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<cr> ]]

vim.keymap.set("n", "<f9>", vim.cmd.Inspect)
vim.keymap.set("n", "<C-q>", "<C-z>", opts)

-- vim.keymap.set("", "", "", opts)
vim.keymap.set("n", "j", "gj", opts)
vim.keymap.set("n", "k", "gk", opts)

vim.keymap.set("n", "<C-h>", "<C-w>h", opts)
vim.keymap.set("n", "<C-j>", "<C-w>j", opts)
vim.keymap.set("n", "<C-k>", "<C-w>k", opts)
vim.keymap.set("n", "<C-l>", "<C-w>l", opts)


-- scroll through results while searching
vim.keymap.set("c", "<C-k>", "getcmdtype() =~ '[?/]' ? '<c-t>' : '<C-k>'", { expr = true })
vim.keymap.set("c", "<C-j>", "getcmdtype() =~ '[?/]' ? '<c-g>' : '<C-j>'", { expr = true })

-- append to visually selected text
-- vim.keymap.set("x", "A", ":norm A", { noremap = true })
-- vim.keymap.set("x", "I", ":norm I", { noremap = true })

-- search only within currently selected
vim.keymap.set("x", "<leader>/", "<ESC>/\\%V", { noremap = true })

-- open last search in quickfix list
vim.keymap.set("n", "<leader>/", ":execute 'vimgrep /'.@/.'/g %'<CR>:copen<CR>", opts)

-- select pasted text
vim.keymap.set("n", "gp", "`[v`]", opts)

-- replays last macro instead of ex mode
vim.keymap.set("n", "Q", "@@", opts)

-- toggle between last buffer, easier to hit than C-^
vim.keymap.set("n", "<leader><Tab>", "<C-^>", opts)

-- toggle highlighting
vim.keymap.set("n", "<leader><CR>", ":set nohlsearch!<CR>", opts)

-- system clipboard
vim.keymap.set("x", "<leader>y", "\"*y :let @+=@*<CR>", opts)
vim.keymap.set("n", "<leader>p", ":set paste<CR>\"+p:set paste!<CR>", opts)
vim.keymap.set("n", "<leader>P", ":set paste<left><CR>\"+P:set paste!<CR>", opts)
vim.keymap.set("x", "<leader>p", "<esc>:set paste<CR>gv\"+P:set paste!<CR>", opts)

-- pasting over viusual selection won't copy the highlighted text into clipboard
vim.keymap.set("x", "p", "P", opts)

-- formats visual selection into columns or shift+c to undo back to single spaces
-- type what you want to seperate by with -s ( default is space )
vim.keymap.set("x", "<leader>c", ":!column -tL<CR>gv:s/\\s*$//e<CR>gv", opts)
vim.keymap.set("x", "<leader>C", ":s/\\s\\+/ /g<CR>gv=", opts)

-- search for highlighted text
vim.keymap.set("x", "*", "y:set hlsearch<CR>/\\V<C-R>=escape(@\",'/\')<CR><CR>", opts)

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %", { silent = true })

vim.keymap.set("n", "<C-u>", "<C-u>zz", opts)
vim.keymap.set("n", "<C-d>", "<C-d>zz", opts)
vim.keymap.set("n", "n", "nzz", opts)
vim.keymap.set("n", "N", "Nzz", opts)

vim.keymap.set("n", "<leader><leader>d", ":windo diffthis<CR>", opts)
vim.keymap.set("n", "<leader><leader>D", ":diffoff!<CR>", opts)
