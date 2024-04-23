return {
  -- {
  -- -- Theme NeoTokyo
  -- "tokyonight.nvim",
  -- lazy = true,
  -- priority = 1000,
  -- opts = {
  --
  -- }
  -- },
  {
    "catppuccin/nvim",
    lazy = false,
    priority = 1000,
    name = "catppuccin",
    opts = {
      transparent = true,
      sidebars = "transparent",
      transparent_background = true,
      floats = "transparent",
    },
    config = function()
      local configs = require("catppuccin")
      configs.setup({
        flavour = "mocha", -- latte, frappe, macchiato, mocha
        transparent_background = true,
        integrations = {
          cmp = true,
          mason = false,
          gitsigns = true,
          nvimtree = true,
          treesitter = true,
          notify = false,
          mini = {
            enabled = true,
            indentscope_color = "",
          },
          -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
        },
      })
    end
  },
  {
    "folke/LazyVim",
    opts = {
       colorscheme = "catppuccin-mocha",
    },
  },
}
