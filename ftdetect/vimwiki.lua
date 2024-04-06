local wikipath = '$HOME/vimwiki/'
local main_wiki = {
	path = wikipath .. 'vimwiki/',
	path_html = wikipath .. 'vimwiki_html',
	automatic_nested_syntaxes = 1,
	list_margin = 0,
    css_name = 'style.css',
	ext = '.wiki',
}

vim.g['vimwiki_list'] = {main_wiki}

local vimwikiGrp = vim.api.nvim_create_augroup("vimwikiGrp", { clear = true })
vim.api.nvim_create_autocmd("BufWritePost", {pattern = os.getenv("HOME") .. "/vimwiki/vimwiki/*", command = "silent VimwikiAll2HTML", group = vimwikiGrp})

