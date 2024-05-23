-- Set leader key
vim.g.maplocalleader = " "
vim.g.mapleader = " "

require("config.lazy")
require("config.keymaps")
require("config.options")
require("config.commands")
require("config.lsp-config")

require("lualine").setup({
    options = {
        theme = "cyberdream",
    },
})
-- penv
-- vim.g.python3_host_prog = '/home/teodor-raychev/.pyenv/shims/python'
-- -- vim.lsp.set_log_level("debug")
