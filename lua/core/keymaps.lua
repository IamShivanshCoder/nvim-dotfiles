vim.keymap.set("n", "<leader>e", function()
	require("mini.files").open(vim.api.nvim_buf_get_name(0))
end, { desc = "File explorer" })

local map = vim.keymap.set

map("n", "<leader>ba", ":BufferLineCyclePrev<CR>", { desc = "Move to previous buffer." })
map("n", "<leader>bd", ":BufferLineCycleNext<CR>", { desc = "Move to next buffer." })

map("t", "<Esc>", [[<C-\><C-n>]], { desc = "Exit terminal mode" })
map("n", "<leader>t", "<cmd>ToggleTerm<CR>", { desc = "Toggle Terminal" })

vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code Action" })
vim.keymap.set("n", "<leader>cd", vim.diagnostic.open_float, { desc = "Open diagnostics" })
vim.keymap.set("n", "<leader>lh", vim.lsp.buf.hover, { desc = "Hover" })
vim.keymap.set("n", "<leader>lg", vim.lsp.buf.definition, { desc = "Go to defintion" })
vim.keymap.set("n", "<leader>li", ":checkhealth vim.lsp<CR>", { desc = "LSP Info" })
