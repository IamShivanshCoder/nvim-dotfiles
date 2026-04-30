vim.pack.add({ "https://github.com/saghen/blink.lib", "https://github.com/saghen/blink.cmp" })
local cmp = require("blink.cmp")
cmp.build():wait(60000)
cmp.setup({
	keymap = { preset = "enter" },
	-- Inside your blink.cmp setup
	completion = {
		menu = {
			border = "single", -- Match the sharp 'single' border in the photo
			draw = {
				columns = {
					{ "label", "label_description", gap = 1 },
					{ "kind_icon", "kind", gap = 1 },
				},
			},
		},
		-- This enables the "ghost text" preview seen in the line 31 of your image
		ghost_text = { enabled = true },
		documentation = {
			auto_show = true,
			window = {
				border = "rounded",
			},
		},
	},

	-- Match the documentation window style
	appearance = {
		highlight_ns = vim.api.nvim_create_namespace("blink_cmp"),
	},

	signature = {
		enabled = true,
		window = {

			show_documentation = false,
			border = "rounded",
			direction_priority = { "s", "n" },
			winblend = 20,
		},
	},
})
