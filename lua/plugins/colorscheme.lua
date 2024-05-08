return {
  {
    "JoosepAlviste/palenightfall.nvim",
    config = function()
      -- set palenight
      require('palenightfall').setup({
        transparent = true,
      })
    end
  },
  {
     "folke/LazyVim",
     opts = {
        colorscheme = "palenightfall"
     },
  }
  -- {
  --   "catppuccin/nvim",
  --   lazy = false,
  --   priority = 1000,
  --   name = "catppuccin",
  --   opts = {
  --     transparent = true,
  --     sidebars = "transparent",
  --     transparent_background = true,
  --     floats = "transparent",
  --   },
  --   config = function()
  --     local configs = require("catppuccin")
  --     configs.setup({
  --       flavour = "mocha", -- latte, frappe, macchiato, mocha
  --       transparent_background = true,
  --       integrations = {
  --         cmp = true,
  --         mason = false,
  --         gitsigns = true,
  --         nvimtree = true,
  --         treesitter = true,
  --         notify = false,
  --         mini = {
  --           enabled = true,
  --           indentscope_color = "",
  --         },
  --       },
  --         vim.cmd("colorscheme catppuccin-mocha")
  --     })
  --   end
  -- },
  -- {
  --   "folke/LazyVim",
  --   opts = {
  --      colorscheme = "catppuccin-mocha",
  --   },
  -- },
  -- {
  --  "marko-cerovac/material.nvim",
  --  lazy = false,
  --  priority = 1000,
  --  config = function()
  --    local mat = require('material')
  --
  --    mat.setup({
  --      disable = {
  --        colored_cursor = true, -- Disable the colored cursor
  --        borders = false, -- Disable borders between verticaly split windows
  --        background = true, -- Prevent the theme from setting the background (NeoVim then uses your terminal background)
  --        term_colors = false, -- Prevent the theme from setting terminal colors
  --        eob_lines = false -- Hide the end-of-buffer lines
  --      },
  --    })
  --    require("material.functions").change_style("palenight")
  --  end
  -- },
  -- {
  --   "folke/LazyVim",
  --   opts = {
  --     colorscheme = "material",
  --   },
  -- },
}
