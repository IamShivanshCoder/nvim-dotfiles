return {
	{
		"nvim-telescope/telescope.nvim",
		version = "*",
		dependencies = {
			"nvim-lua/plenary.nvim",
			-- optional but recommended
			{
				"nvim-telescope/telescope-fzf-native.nvim",
				build = "make",
				config = function()
					require("telescope").setup({
						extensions = {
							fzf = {
								fuzzy = true, -- false will only do exact matching
								override_generic_sorter = true, -- override the generic sorter
								override_file_sorter = true, -- override the file sorter
								case_mode = "smart_case", -- or "ignore_case" or "respect_case"
								-- the default case_mode is "smart_case"
							},
						},
						defaults = {
							file_ignore_patterns = {
								"node_modules",
							},
						},
					})

					require("telescope").load_extension("fzf")
				end,
			},
		},
		opts = {},
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
			})
			require("telescope").load_extension("ui-select")
		end,
	},
	{
		"nvim-telescope/telescope-file-browser.nvim",
		dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
		config = function()
			require("telescope").setup({
				extensions = {
					file_browser = {

						hijack_netrw = true,
					},
				},
			})
			require("telescope").load_extension("file_browser")
		end,
	},
}
