vim.pack.add({ "https://github.com/stevearc/conform.nvim" })

require("conform").setup({
	formatters_by_ft = {
		c = { "clang_format" },
		cpp = { "clang_format" },
		python = { "isort", "black" }, -- isort runs first
		lua = { "stylua" },
		sh = { "shfmt" },
		bash = { "shfmt" },
		rust = { "rustfmt" },
	},

	-- Format on save
	format_on_save = {
		timeout_ms = 2000,
		lsp_fallback = true, -- falls back to LSP if no formatter defined
	},

	-- Formatter options
	formatters = {
		shfmt = {
			args = { "-i", "4" }, -- 4 space indent
		},
		clang_format = {
			args = { "--style=file", "--fallback-style=Google" },
		},
		black = {
			args = { "--line-length", "88", "-" },
		},
	},
})

-- Manual format keymap (overrides the LSP format bind)
vim.keymap.set({ "n", "v" }, "<leader>f", function()
	require("conform").format({
		async = true,
		lsp_fallback = true,
	})
end, { desc = "Format buffer" })
