local builtin = require('telescope.builtin')
local wk = require("which-key")

wk.add({
  { "<leader>b", group = "Buffers" },
  { "<leader>f", group = "Find" },
  { "<leader>e", group = "Explorer" },
  { "<leader>c", group = "Code" },
  { "<leader>l", group = "LSP" },
})
-- Keymaps for telescope
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

-- Neotree Commands
vim.keymap.set('n','<leader>e',':Neotree filesystem toggle left<CR>',{desc = 'Reveal Filesystem'})

-- Code Actions
vim.keymap.set('n','<leader>ca',vim.lsp.buf.code_action,{desc = "Code Action"})
vim.keymap.set("n", "<leader>cd", vim.diagnostic.open_float,{desc = "Open diagnostics"})
vim.keymap.set('n','<leader>lh',vim.lsp.buf.hover,{desc = "Hover"})
vim.keymap.set('n','<leader>lg',vim.lsp.buf.definition,{desc = "Go to defintion"})

-- Buffer Management

vim.keymap.set('n','<leader>ba',':BufferLineCyclePrev<CR>',{desc = "Move to previous buffer."})
vim.keymap.set('n','<leader>bd',':BufferLineCycleNext<CR>',{desc = "Move to next buffer."})


