local builtin = require("telescope.builtin")
local wk = require("which-key")

wk.add({
	{ "<leader>b", group = "Buffers" },
	{ "<leader>f", group = "Find" },
	{ "<leader>e", group = "Explorer" },
	{ "<leader>c", group = "Code,Diagnostics" },
	{ "<leader>l", group = "LSP" },
})
-- Keymaps for telescope
vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })

-- Code Actions
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code Action" })
vim.keymap.set("n", "<leader>cd", vim.diagnostic.open_float, { desc = "Open diagnostics" })
vim.keymap.set("n", "<leader>lh", vim.lsp.buf.hover, { desc = "Hover" })
vim.keymap.set("n", "<leader>lg", vim.lsp.buf.definition, { desc = "Go to defintion" })
vim.keymap.set("n", "<leader>li", ":LspInfo<CR>", { desc = "LSP Info" })

-- Buffer Management

vim.keymap.set("n", "<leader>ba", ":BufferLineCyclePrev<CR>", { desc = "Move to previous buffer." })
vim.keymap.set("n", "<leader>bd", ":BufferLineCycleNext<CR>", { desc = "Move to next buffer." })

-- Telescope file Explorer
vim.keymap.set("n", "<space>e", ":Telescope file_browser<CR>")

-- open file_browser with the path of the current buffer
vim.keymap.set(
	"n",
	"<space>E",
	":Telescope file_browser path=%:p:h select_buffer=true<CR>",
	{ desc = "Explore in cwd" }
)

--Toggle  Term
vim.keymap.set("n", "<leader>t", "<cmd>ToggleTerm<CR>", { desc = "Toggle Terminal" })
