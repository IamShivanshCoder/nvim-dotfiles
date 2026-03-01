vim.cmd.colorscheme("oldworld")

-- Tab Configs
vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")

vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*",
	callback = function(args)
		require("conform").format({ bufnr = args.buf })
	end,
})
require("bufferline").setup({
	options = {
		always_show_bufferline = true,
		diagnostics = "nvim_lsp",
	},
})

vim.api.nvim_create_autocmd("FileType", {
	pattern = "dashboard",
	callback = function()
		vim.opt_local.laststatus = 0
		vim.opt_local.showtabline = 0
		vim.opt_local.ruler = false
		vim.opt_local.cmdheight = 0
	end,
})

-- Save automatically when leaving buffer
vim.opt.autowrite = true
vim.opt.autowriteall = true

-- Confirm before closing modified buffers
vim.opt.confirm = true

vim.opt.foldcolumn = "1"
vim.opt.foldlevel = 99
vim.opt.foldlevelstart = 99
vim.opt.foldenable = true
-- This makes the symbols in the column look like thin arrows/lines
vim.opt.fillchars = {
	eob = " ",
	fold = " ",
	foldopen = "@",
	foldsep = " ",
	foldclose = ">",
}
