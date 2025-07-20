return {
  {
    "nvim-tree/nvim-web-devicons",
    opts = {
      override = {
        css = {
          icon = "",
          color = "#351c75",
          cterm_color = "54",
          name = "css"
        },
        norg = {
          icon = "",
        },
        fish = {
          icon = "",
          color = "#8fce00",
          name = "fish"
        },
        js = {
          icon = "",
          color = "#ffec33",
          name = "javascript"
        },
        html = {
          icon = "",
          color = "#FF5733",
          name = "html"
        }
      },
      override_by_filename = {
        Makefile = {
          icon = ""
        }
      },
      color_icons = true,
      default = true,
      static = false
    }
  },
  {
    'lewis6991/gitsigns.nvim',
    opts = {}
  },
  {
    'echasnovski/mini.starter',
    version = '*',
    config = function()
      local starter = require('mini.starter')
      starter.setup({
        evaluate_single = true,
        silent = true,
        footer = "",
        content_hooks = {
          starter.gen_hook.adding_bullet(),
          starter.gen_hook.aligning("center", "center"),
        },
      })
    end,
  },
  {
    "norcalli/nvim-colorizer.lua",
    config = function()
      require("colorizer").setup()
    end
  },
  {
    'akinsho/toggleterm.nvim',
    version = "*",
    config = true
  },
  {
    "ibhagwan/fzf-lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {}
  },
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    event = { "BufReadPre", "BufNewFile" },
    opts = {
      indent = {
        char = "│",
         highlight = "IblIndent",
      },
    },
    config = function()
      vim.api.nvim_set_hl(0, "IblIndent", { bold = true })
      require("ibl").setup()
    end,
  },
  {
    "windwp/nvim-ts-autotag",
    opts = {}
  }
}
