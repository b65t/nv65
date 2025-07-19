return {
  -- lualine
  {
    "nvim-lualine/lualine.nvim",
    opts = {
      options = {
        theme = "auto",
        component_separators = { left = " ", right = "" },
        section_separators = { left = "", right = "" },
        icons_enabled = true,
        disabled_filetypes = { 'NvimTree' }
      },
      sections = {
        lualine_a = {  },
        lualine_b = {  {
          function() return '█' end,
          padding = { left = 0, right = 0 },
          color = { bg = 'NONE' }
          }, "mode"
        },
        lualine_c = { "filename", "branch", "diagnostics"},
        lualine_x = {"diff", "filetype" },
        lualine_y = { {
          function() return '▄' end,
          padding = { left = 0, right = 0 },
          color = { bg = 'NONE' }
          }
        },
        lualine_z = {  },
      },
    },
  },
  -- barbar
  {
    'romgrk/barbar.nvim',
    dependencies = {
      'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
    },
    init = function() vim.g.barbar_auto_setup = false end,
    opts = {
      icons = {
        buffer_index = false,
        buffer_number = false,
        separator = {left = ' ', right = ' '},
        auto_hide = false,
        exclude_ft = {'javascript'},
        exclude_name = {'package.json'},
      },
      maximum_padding = 0,
      sidebar_filetypes = {
        NvimTree = true,
      }
    },
    version = '^1.0.0', -- optional: only update when a new 1.x version is released
  },
  -- noice
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {
      lsp = {
        override = {
          ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
          ["vim.lsp.util.stylize_markdown"] = true,
          ["cmp.entry.get_documentation"] = true,
        },
      },
      presets = {
        bottom_search = true,
        command_palette = true,
        long_message_to_split = true,
        inc_rename = false,
        lsp_doc_border = false,
      },
    },
    dependencies = {
      "MunifTanjim/nui.nvim",
    }
  },
  -- dropbar | winbar
  {
    "Bekaboo/dropbar.nvim",
    opts = {
      scrollbar = {
        enable = true,
        background = true,
      },
    }
  },
  -- scroll bar
  {
    'petertriho/nvim-scrollbar',
    opts = {
      marks = {
        Cursor = {
          text = ""
        },
      },
    }
  },
  -- notifications
  {
    "j-hui/fidget.nvim",
    opts = {}
  }
}
