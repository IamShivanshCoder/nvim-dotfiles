
vim.pack.add({
  "https://github.com/vossenwout/guts.nvim",
})
vim.pack.add({ "https://github.com/blazkowolf/gruber-darker.nvim" })
vim.cmd.colorscheme("gruber-darker")
require("core.options")
require("core.keymaps")
require("core.autocmds")
require("plugins.blink")
require("plugins.mason")
require("plugins.ui")
require("plugins.mini")
require("plugins.conform")
require("plugins.goodies")
