return {
	"zapling/mason-conform.nvim",
	dependencies = {
		"williamboman/mason.nvim",
		"stevearc/conform.nvim",
	},
	config = function()
		require("mason-conform").setup({
			ensure_installed = {
				"black", -- python
				"prettier", -- js, html, css
				"prettierd",
				"isort",
				"eslint",
			},
			ignore_install = { "stylua" },
			automatic_installation = true,
			formatters = {
				["clang-format"] = {
					-- This overrides the default arguments
					prepend_args = {
						"-style={BasedOnStyle: llvm, AlignAfterOpenBracket: DontAlign, IndentWidth: 4}",
					},
				},
			},
		})
	end,
}
