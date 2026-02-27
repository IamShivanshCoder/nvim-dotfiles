return {
	{
		"akinsho/toggleterm.nvim",
		version = "*",
		opts = {
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
