print("Run lazy")
-- Set leader key
vim.g.maplocalleader = " "
vim.g.mapleader = " "

require("config.lazy")
require("config.keymaps")
require("config.options")
-- Options for material: darker, lighter, oceanic, palenight, deep ocean
-- require('material.functions').change_style("darker")
-- require('lualine').setup {
--   options = {
--     theme = 'material-stealth'
--   }
-- }
-- require("plugins.colorscheme")
