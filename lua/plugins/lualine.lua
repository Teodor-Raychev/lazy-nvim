return {
  {
    'nvim-lualine/lualine.nvim',
    opts = {
      options = {
        icons_enabled = true,
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        component_separators = '|',
        section_separators = '',
      },
      sections = {
        lualine_a = { 'mode' },
        lualine_b = { 'branch', 'diff', 'diagnostics' },
        lualine_c = { { 'filename', path = 1 } },
        lualine_x = { { 'datetime', style = " %H:%M" }, 'encoding', 'fileformat', 'filetype' },
        lualine_y = { 'progress' },
        lualine_z = { 'location' }
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { 'filename' },
        lualine_x = { 'location' },
        lualine_y = {},
        lualine_z = {}
      },
      tabline = {},
      winbar = {},
      inactive_winbar = {},
      extensions = {}
    },
  },
  -- {
  --   'lukas-reineke/indent-blankline.nvim',
  --   -- i don't think lazy will be able to guess
  --   -- `ibl` is the main module, so set it manually
  --   main = 'ibl',
  --   opts = {
  --     enabled = true,
  --     scope = {
  --       enabled = true,
  --     },
  --     indent = {
  --       char = '▏',
  --     },
  --   }
  -- }
}
