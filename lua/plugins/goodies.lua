vim.pack.add({
	{ src = "https://github.com/ibhagwan/fzf-lua" },
	{ src = "https://github.com/folke/which-key.nvim" },
})

require("fzf-lua").setup({
	winopts = {
		height = 0.85,
		width = 0.80,
		preview = {
			layout = "vertical",
			vertical = "down:45%",
		},
	},
})

local fzf = require("fzf-lua")
local k = vim.keymap.set

k("n", "<leader>ff", fzf.files, { desc = "Find files" })
k("n", "<leader>fg", fzf.live_grep, { desc = "Live grep" })
k("n", "<leader>fb", fzf.buffers, { desc = "Buffers" })
k("n", "<leader>fh", fzf.help_tags, { desc = "Help" })
k("n", "<leader>fr", fzf.oldfiles, { desc = "Recent files" })
k("n", "<leader>fd", fzf.diagnostics_document, { desc = "Diagnostics" })
k("n", "<leader>fs", fzf.lsp_document_symbols, { desc = "Symbols" })
k("n", "<leader>fc", fzf.commands, { desc = "Commands" })
k("n", "<leader>lr", fzf.lsp_references, { desc = "LSP references" })
k("n", "<leader>ld", fzf.lsp_definitions, { desc = "LSP definitions" })
-- lua/plugins/whichkey.lua
require("which-key").setup({
	win = {
		border = "rounded",
	},
	preset = "helix",
	sort = { "local", "order", "group", "alphanum", "mod" },
	icons = { mappings = true },
})

-- Group labels (shows in the popup)
local wk = require("which-key")

wk.add({
	{ "<leader>b", group = "Buffers" },
	{ "<leader>f", group = "Find" },
	{ "<leader>E", group = "Explorer in CWD", icon = "󰉓" },
	{ "<leader>e", group = "Explorer", icon = "󰙅" },
	{ "<leader>c", group = "Code,Diagnostics" },
	{ "<leader>l", group = "LSP", icon = "󱘖" },
	{ "<leader>z", group = "Fold Options", icon = "󰁂" },
})
