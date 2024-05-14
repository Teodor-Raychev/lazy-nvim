-- Set leader key
vim.g.maplocalleader = " "
vim.g.mapleader = " "
require("config.lazy")
require("config.keymaps")
require("config.options")
require("config.lsp-config")
-- vim.lsp.set_log_level("debug")
