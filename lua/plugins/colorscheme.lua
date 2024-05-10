return {
  {
    "scottmckendry/cyberdream.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      local colors = require("cyberdream.colors")
      local t = colors.default
      local n_green = "#9cf08b"
      local n_purple = "#c981fc"
      local n_orange = "#fcc781" -- "#f78c6c"
      local n_red = "#ed5555"
      local n_yellow = "#f2d17e"

      require("cyberdream").setup({
        -- Recommended - see "Configuring" below for more config options
        transparent = true,
        italic_comments = true,
        hide_fillchars = true,       -- Replace all fillchars with ' ' for the ultimate clean look
        borderless_telescope = true, -- Modern borderless telescope theme
        terminal_colors = true,      -- Set terminal colors used in `:terminal`

        theme = {
          highlights = {
            -- Highlight groups to override, adding new groups is also possible
            -- See `:help highlight-groups` for a list of highlight groups
            Comment = { fg = "#696969", bg = "NONE", italic = true },
            Constant = { fg = t.orange },
            String = { fg = t.n_green },
            Character = { fg = n_green },
            Identifier = { fg = t.fg },
            Function = { fg = t.blue },
            Statement = { fg = t.purple },
            Operator = { fg = t.pink },
            Keyword = { fg = n_purple },
            PreProc = { fg = t.cyan },
            Type = { fg = n_orange },
            Special = { fg = t.cyan },
            Debug = { fg = t.orange },
            -- Complete list can be found in `lua/cyberdream/theme.lua`

          },
          -- Override a color entirely
          colors = {
            -- For a list of colors see `lua/cyberdream/colours.lua`
            -- Example:
            bg = "#000000",
            bgAlt = "#25262e",
            -- green = "#00ff00", -- default
            green = n_green,
            orange = n_orange,
            red = n_red,
            yellow = n_yellow,
            bgHighlight = "#3f3e4f",
          },
        },
      })
      vim.cmd("colorscheme cyberdream") -- set the colorscheme
    end,
  },
  {
    "folke/LazyVim",
    lazy = false,
    priority = 1000,
    opts = {
      colorscheme = "cyberdream"
    },
  },
}
