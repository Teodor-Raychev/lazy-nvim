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

-- DEFAULT_OPTIONS = {
--   RGB      = true;         -- #RGB hex codes
--   RRGGBB   = true;         -- #RRGGBB hex codes
--   names    = false;         -- "Name" codes like Blue
--   RRGGBBAA = false;        -- #RRGGBBAA hex codes
--   rgb_fn   = false;        -- CSS rgb() and rgba() functions
--   hsl_fn   = false;        -- CSS hsl() and hsla() functions
--   css      = false;        -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
--   css_fn   = false;        -- Enable all CSS *functions*: rgb_fn, hsl_fn
--   -- Available modes: foreground, background
--   mode     = 'background'; -- Set the display mode.
-- }


