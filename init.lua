-- Set leader key
vim.g.maplocalleader = " "
vim.g.mapleader = " "
require("config.lazy")
require("config.keymaps")
require("config.options")
require("config.lsp-config")

-- set lualine theme
local lua_line = require("lualine")
lua_line.setup({
  options = {
    theme = "auto"
  }
})
