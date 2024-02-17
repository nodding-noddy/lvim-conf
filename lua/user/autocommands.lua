local U = require("utils.colors")
local Colors = require("utils.pallets")

lvim.autocommands = {
  {
    { "ColorScheme" },
    {
      pattern = "*",
      callback = function()
        vim.api.nvim_set_hl(0, "diffAdded", { fg = Colors.green, underline = false, bold = false })
        vim.api.nvim_set_hl(0, "diffRemoved", { fg = Colors.red, underline   = false, bold = false })
        vim.api.nvim_set_hl(0, "diffChanged", { fg = Colors.blue, underline  = false, bold = false })
        vim.api.nvim_set_hl(0, "diffOldFile", { fg = Colors.yellow, underline  = false, bold = false })
        vim.api.nvim_set_hl(0, "diffNewFile", { fg = Colors.peach, underline   = false, bold = false })
        vim.api.nvim_set_hl(0, "diffFile", { fg = Colors.blue, underline   = false, bold = false })
        vim.api.nvim_set_hl(0, "diffLine", { fg = Colors.overlay, underline   = false, bold = false })
        vim.api.nvim_set_hl(0, "diffIndexLine", { fg = Colors.teal, underline  = false, bold = false })
        vim.api.nvim_set_hl(0, "DiffAdd", { bg = U.darken(Colors.green, 0.18, Colors.base), underline = false, bold = false}) -- diff mode: Added line |diff.txt|
        vim.api.nvim_set_hl(0, "DiffChange", { bg = U.darken(Colors.blue, 0.07, Colors.base), underline = false, bold = false}) -- diff mode: Changed line |diff.txt|
        vim.api.nvim_set_hl(0, "DiffDelete", { bg = U.darken(Colors.red, 0.18, Colors.base), underline = false, bold = false}) -- diff mode: Deleted line |diff.txt|
        vim.api.nvim_set_hl(0, "DiffText", { bg = U.darken(Colors.blue, 0.30, Colors.base), underline = false, bold = false}) -- diff mode: Changed text within a changed line |diff.txt|
      end,
    },
  },
}

