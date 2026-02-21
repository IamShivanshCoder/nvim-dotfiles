
local transparent_groups = {
  "Normal",
  "NormalFloat",
  "SignColumn",
  "EndOfBuffer",
  "StatusLine",
  "StatusLineNC",
  "TabLine",
  "TabLineFill",
  "TabLineSel",
}

for _, group in ipairs(transparent_groups) do
  vim.api.nvim_set_hl(0, group, { bg = "none" })
end

require("catppuccin").setup({
  transparent_background = true,
  custom_highlights = function(colors)
    return {
      StatusLine = { bg = "none" },
      StatusLineNC = { bg = "none" },
      TabLine = { bg = "none" },
      TabLineFill = { bg = "none" },
    }
  end,
})

return{}
