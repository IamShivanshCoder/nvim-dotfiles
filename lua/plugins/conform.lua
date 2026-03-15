return {
	"stevearc/conform.nvim",
	opts = {
		formatters_by_ft = {
			python = { "isort", "black" },
			javascript = { "prettierd", "prettier", "eslint", stop_after_first = true },
			html = { "prettier" },
			css = { "prettier" },
			lua = { "stylua" },
			c = { "clang-format" },
		},
		default_format_options = {
			timeout_ms = 10000, -- increase from default 1000ms
		},
	},
}
