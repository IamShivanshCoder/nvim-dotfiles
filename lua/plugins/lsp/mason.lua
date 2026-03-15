vim.lsp.enable({
	"clangd",
})

return {
	{
		"mason-org/mason-lspconfig.nvim",
		opts = {
			ensure_installed = {
				"ts_ls",
				"pyright",
			},
			automatic_installation = true,
			servers = {
				clangd = { mason = false },
			},
		},
		dependencies = {
			{ "mason-org/mason.nvim", opts = {} },
			{
				"neovim/nvim-lspconfig",
			},
		},
	},
}
