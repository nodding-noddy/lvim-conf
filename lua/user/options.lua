local opt = vim.opt

-- Numbers
opt.nu = true
opt.rnu = true

-- Indentation and text wrapping
opt.breakindent = true
opt.breakindentopt = "shift:2,min:40,sbr"
opt.showbreak = ">>"

opt.clipboard = "unnamedplus"
opt.scrolloff = 4

-- Lvim specifics
-- Toggle transparency from here
lvim.transparent_window = true

-- Override the default "smart" with "truncate"
lvim.builtin.telescope.defaults.path_display = { "truncate" }

lvim.builtin.lualine.sections.lualine_b = { 
  { "filename", path = 1 }, 
  { "branch" },
  { "diff" },
  { "diagnostics", sources = { "nvim_lsp" } },
}
