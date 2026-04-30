--- This file contains mini.nvim setup and its plugins config

vim.pack.add({ "https://github.com/nvim-mini/mini.nvim" })

require("mini.pairs").setup()

require("mini.files").setup({
	windows = {
		preview = true,
		width_preview = 40,
		width_focus = 30,
	},
	options = {
		use_as_default_explorer = true,
	},
})

require("mini.indentscope").setup({
	symbol = "|",
	options = {
		try_as_border = true,
	},
})
require("mini.cursorword").setup()
require("mini.ai").setup()
require("mini.trailspace").setup()
require("mini.notify").setup()
require("mini.bufremove").setup()
