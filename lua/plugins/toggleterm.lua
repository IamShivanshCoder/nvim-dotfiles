return {
	{
		"akinsho/toggleterm.nvim",
		version = "*",
		opts = {
			open_mapping = [[<leader>t]],
			direction = "float",
			size = 20,
			float_opts = {
				border = "curved",
				winblend = 0,
				highlights = { border = "Normal", background = "Normal" },
			},
			start_in_insert = true,
			close_on_exit = true,
		},
	},
}
