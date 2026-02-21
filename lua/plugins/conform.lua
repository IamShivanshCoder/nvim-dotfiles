return {
	"stevearc/conform.nvim",
	opts = {
		formatters_by_ft = {
			python = { "isort", "black" },
			javascript = { "prettierd", "prettier", stop_after_first = true },
			lua = { "stylua" },
		},
	},
}
