lvim.autocommands = {
  {
    { "ColorScheme" },
    {
      pattern = "*",
      callback = function()
        vim.cmd([[hi diffAdded guifg=#a6e3a1]])
        vim.cmd([[hi diffRemoved guifg=#f38ba8]])
        vim.cmd([[hi diffChanged guifg=#89b4fa]])
        vim.cmd([[hi diffOldFile guifg=#f9e2af]])
        vim.cmd([[hi diffNewFile guifg=#fab387]])
        vim.cmd([[hi diffFile guifg=#89b4fa]])
        vim.cmd([[hi diffLine guifg=#9399b2]])
        vim.cmd([[hi diffIndexLine guifg=#94e2d5]])
        vim.cmd([[hi DiffAdd guibg=#364143]]) -- diff mode: Added line |diff.txt|
        vim.cmd([[hi DiffChange guibg=#25293C]]) -- diff mode: Changed line |diff.txt|
        vim.cmd([[hi DiffDelete guibg=#443244]]) -- diff mode: Deleted line |diff.txt|
        vim.cmd([[hi DiffText guibg=#3E4B6B]]) -- diff mode: Changed text within a changed line |diff.txt|
      end,
    },
  },
}
