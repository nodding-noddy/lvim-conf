function ColorMyPencils(color)
  color = color or "rose-pine-main"
  vim.cmd.colorscheme(color)

  -- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
  -- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })


  -- vim.api.nvim_set_hl(0, "TreesitterContext", { bg = "none" })
  vim.cmd([[hi diffAdded guifg=#a6e3a1]])
  vim.cmd([[hi diffRemoved guifg=#f38ba8]])
  vim.cmd([[hi diffChanged guifg=#89b4fa]])
  vim.cmd([[hi diffOldFile guifg=#f9e2af]])
  vim.cmd([[hi diffNewFile guifg=#fab387]])
  vim.cmd([[hi diffFile guifg=#89b4fa]])
  vim.cmd([[hi diffLine guifg=#9399b2]])
  vim.cmd([[hi diffIndexLine guifg=#94e2d5]])
  vim.cmd([[hi DiffAdd guibg=#364143]])    -- diff mode: Added line |diff.txt|
  vim.cmd([[hi DiffChange guibg=#25293C]]) -- diff mode: Changed line |diff.txt|
  vim.cmd([[hi DiffDelete guibg=#443244]]) -- diff mode: Deleted line |diff.txt|
  vim.cmd([[hi DiffText guibg=#3E4B6B]])   -- diff mode: Changed text within a changed line |diff.txt|
end

return {
  {
    "folke/tokyonight.nvim",
    config = function()
      require("tokyonight").setup({
        -- your configuration comes here
        -- or leave it empty to use the default settings
        style = "storm",                -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
        transparent = true,             -- Enable this to disable setting the background color
        terminal_colors = true,         -- Configure the colors used when opening a `:terminal` in Neovim
        styles = {
          -- Style to be applied to different syntax groups
          -- Value is any valid attr-list value for `:help nvim_set_hl`
          comments = { italic = false },
          keywords = { italic = false },
          -- Background styles. Can be "dark", "transparent" or "normal"
          sidebars = "dark",           -- style for sidebars, see below
          floats = "dark",             -- style for floating windows
        },
      })
    end
  },

  {
    "scottmckendry/cyberdream.nvim",
    lazy = false,
    priority = 1000,
  },
  {
    "rose-pine/neovim",
    name = "rose-pine",
    config = function()
      require('rose-pine').setup({
        -- disable_background = true,
        styles = {
          italic = false,
        },
      })
      -- ColorMyPencils()
    end
  },
  {
    "rebelot/kanagawa.nvim",
    config = function()
      require("kanagawa").setup {
        colors = {
          theme = { all = { ui = { bg_gutter = 'none' } } }
        },
        -- transparent = true,
        -- keywordStyle = { italic = false}
      }
      -- ColorMyPencils("kanagawa")
    end
  },
  {
    "catppuccin/nvim",
    lazy = false,
    name = "catppuccin",
    priority = 1000,
    config = function()
      ColorMyPencils("catppuccin-mocha")
    end
  }
}
