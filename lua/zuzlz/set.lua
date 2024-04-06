vim.opt.termguicolors = true
-- vim.cmd("colorscheme handmade")


-- vim.opt.guicursor = 'n-v-c-sm:block-Error,i-ci-ve:ver25-Todo,r-cr-o:hor20'

-- vim.opt.guicursor = "n:block-Todo/Normal,i:Cursor/Normal"
-- vim.cmd[[
-- hi Cursor1 guifg=green guibg=green
-- hi Cursor2 guifg=red guibg=red
-- hi Cursor3 guifg=blue guibg=blue
-- " set guicursor=n-v-c-sm:block-Cursor1/lCursor1,i-ci-ve:hor20-Cursor2/lCursor2,r-cr-o:hor20-Cursor3/lcursor3
-- ]]

-- vim.opt.guicursor = "n:block-Todo,i:Cursor"
vim.opt.guicursor = ""

		-- vim.opt.guicursor="n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor,sm:block-blinkwait175-blinkoff150-blinkon175"

-- vim.opt.statusline = "[%F]%t - Row:%5l Col:%5v  %M%R"

vim.opt.tabstop = 4
vim.opt.shiftwidth = 0
vim.opt.softtabstop = -1
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.isfname:append("@-@")
vim.opt.relativenumber = true
vim.opt.ttimeoutlen = 10
vim.opt.completeopt = "menu,preview,noinsert"
vim.opt.fillchars = { eob = " " }
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.wrapscan = false
vim.opt.scrolloff = 10
vim.opt.sidescrolloff = 10
vim.opt.splitkeep = "screen"
vim.opt.virtualedit = "block"
vim.opt.matchpairs = vim.opt.matchpairs + "<:>"
vim.opt.cursorline = true
vim.opt.cursorcolumn = false
vim.opt.inccommand = "split"
vim.opt.signcolumn = "yes"
vim.opt.shortmess = vim.opt.shortmess + "c"
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.foldenable = false

vim.opt.undodir = os.getenv("XDG_CACHE_HOME") .. "/nvim/undodir"
vim.opt.undofile = true
vim.opt.undolevels = 100000
