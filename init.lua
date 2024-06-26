-- Set leader key
vim.g.maplocalleader = " "
vim.g.mapleader = " "
require("config.lazy")
require("config.keymaps")
require("config.options")
require("config.commands")
require("config.lsp-config")
require("config.custom_lualine")
require("config.custom_git")

