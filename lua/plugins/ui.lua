vim.pack.add({ { src = "https://github.com/catppuccin/nvim", name = "catppuccin" } })
vim.pack.add({{src = "https://github.com/sphamba/smear-cursor.nvim"}})

require('smear_cursor').setup({
  stiffness = 0.6,
  trailing_stiffness = 0.45,
  trailing_indicator_stiffness = 0.4,
  distance_stop_animating = 0.5,
  hide_target_hack = false,
  smear_between_buffers = true,
  smear_between_neighbor_lines = true,
  scroll_buffer_space = true,
  legacy_computing_symbols_support = false,
  smear_insert_mode = true,
  cursor_color = "none",
})

