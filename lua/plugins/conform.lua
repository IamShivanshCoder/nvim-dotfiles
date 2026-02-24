return {
	"stevearc/conform.nvim",
	opts = {
		formatters_by_ft = {
			python = { "isort", "black" },
			javascript = { "prettierd", "prettier",'eslint', stop_after_first = true },
			lua = { "stylua" },
            html =  {"prettier"},
            css =  {"prettier"},
            javascriptreact =  {"eslint","prettier"},
            typescriptreact =  {"eslint","prettier"}
		},
	},
}
