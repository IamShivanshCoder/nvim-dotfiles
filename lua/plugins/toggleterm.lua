vim.pack.add({ src = "https://github.com/akinsho/toggleterm.nvim" })

require("toggleterm").setup({
	direction = "float",
	size = 20,
	float_opts = {
		border = "curved",
		winblend = 0,
		highlights = { border = "Normal", background = "Normal" },
	},
	start_in_insert = true,
	close_on_exit = true,
})
