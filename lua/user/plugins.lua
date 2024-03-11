lvim.plugins ={
  {
    'tpope/vim-fugitive',
    cmd = 'Git',
    lazy = false
  },
  {
    'kevinhwang91/nvim-ufo',
    lazy = false,
    dependencies = { {'neoclide/coc.nvim', branch = 'release'}, 'kevinhwang91/promise-async' },
    config = function()
      vim.o.foldcolumn = '1'
      vim.o.foldlevel = 99
      vim.o.foldlevelstart = 99
      vim.o.foldenable = true

      vim.keymap.set('n', 'zR', require('ufo').openAllFolds)
      vim.keymap.set('n', 'zM', require('ufo').closeAllFolds)

      require("ufo").setup({})
    end
  },
  {
    "kylechui/nvim-surround",
    version = "*",
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup({})
    end
  },
  {
    'rmagatti/auto-session',
    lazy = false,
    config = function()
      require("auto-session").setup {
        log_level = "error",
        auto_session_suppress_dirs = { "~/", "~/Projects", "~/Downloads", "/"},
      }
    end
  },
  -- {
  --   'rmagatti/session-lens',
  --   dependencies = {'rmagatti/auto-session', 'nvim-telescope/telescope.nvim'},
  --   config = function()
  --     vim.keymap.set('n','<leader>ps',':Telescope session-lens search_session<CR>',{})
  --     require('session-lens').setup({})
  --   end,
  --   lazy = false
  -- },
  {
    'simrat39/symbols-outline.nvim',
    config = function()
      local options = require('symbols-outline')
      require('symbols-outline').setup(options)
    end,
    lazy = false
  },
  {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {},
    lazy = false
  },
  {"christoomey/vim-tmux-navigator" },
  {
    "catppuccin/nvim",
    lazy = false,
    name = "catppuccin",
    priority = 1000,
  },
  {
    'rmagatti/goto-preview',
    config = function()
      require('goto-preview').setup {
        default_mappings = true
      }
    end
  },
  {
    "sindrets/diffview.nvim"
  },
  {
    "tpope/vim-sleuth",
    lazy = false
  },
  {
    "mfussenegger/nvim-dap",
    dependencies = {
      "leoluz/nvim-dap-go",
      "rcarriga/nvim-dap-ui",
    },
    config = function()
      require("dapui").setup()
      require("dap-go").setup()

      local dap, dapui = require("dap"), require("dapui")

      dap.listeners.before.attach.dapui_config = function()
        dapui.open()
      end
      dap.listeners.before.launch.dapui_config = function()
        dapui.open()
      end
      dap.listeners.before.event_terminated.dapui_config = function()
        dapui.close()
      end
      dap.listeners.before.event_exited.dapui_config = function()
        dapui.close()
      end

      vim.keymap.set("n", "<Leader>dt", ":DapToggleBreakpoint<CR>")
      vim.keymap.set("n", "<Leader>dc", ":DapContinue<CR>")
      vim.keymap.set("n", "<Leader>dx", ":DapTerminate<CR>")
      vim.keymap.set("n", "<Leader>do", ":DapStepOver<CR>")
    end,
  },
}
