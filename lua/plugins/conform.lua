return {
	"stevearc/conform.nvim",
	opts = {
		formatters_by_ft = {
			python = { "isort", "black" },
			javascript = { "prettierd", "prettier",'eslint', stop_after_first = true },
            html =  {"prettier"},
            css =  {"prettier"},
            lua = {"stylua"}
		},
	},
}
