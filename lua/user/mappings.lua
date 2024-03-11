local kind = require('user.kind')

lvim.leader = "space"

local keys = lvim.keys
local buffer_mappings = lvim.lsp.buffer_mappings

-- Workflow & Navigation
keys.normal_mode["<C-s>"] = ":w<cr>"
keys.normal_mode["<S-l>"] = ":BufferLineCycleNext<CR>"
keys.normal_mode["<S-h>"] = ":BufferLineCyclePrev<CR>"
keys.normal_mode["<C-n>"] = ":NvimTreeToggle<CR>"
keys.normal_mode["<leader>uw"] = ":set wrap!<CR>"
keys.normal_mode["<leader>so"] = ":SymbolsOutline<CR>"

-- LSP Related mappings
buffer_mappings.normal_mode["gr"] = {
  ":lua require'telescope.builtin'.lsp_references()<cr>",
  kind.cmp_kind.Reference .. " Find references"
}
buffer_mappings.normal_mode["gd"] = {
  ":lua vim.lsp.buf.definition()<cr>",
  -- ":lua require'telescope.builtin'.lsp_definitions()<cr>",
  kind.cmp_kind.Reference .. " Definitions"
}
buffer_mappings.normal_mode["gD"] = {
  ":lua vim.lsp.buf.type_definition()<cr>",
  kind.cmp_kind.Reference .. " Type Definition"
}
buffer_mappings.normal_mode["gf"] = {
  ":Telescope frecency<cr>",
  kind.cmp_kind.Reference .. " Telescope Frecency"
}

-- Format visually selected text
buffer_mappings.visual_mode["<leader>lf"] = {
  function()
    vim.lsp.buf.format({
      async = false,
      range = {
        ["start"] = vim.api.nvim_buf_get_mark(0, "<"),
        ["end"] = vim.api.nvim_buf_get_mark(0, ">"),
      }
    })
  end,
  "Format selected text."
}

vim.keymap.set('n', 'gn', ":tabe %<CR>")
