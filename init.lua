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

-- for files with no syntax set a file type when opened:
-- :setf <type>
-- exp: :setf nginx

-- rubocop:
vim.opt.signcolumn = "yes"
vim.api.nvim_create_autocmd("FileType", {
  pattern = "ruby",
  callback = function()
    vim.lsp.start {
      name = "rubocop",
      cmd = { "bundle", "exec", "rubocop", "--lsp" },
    }
  end,
})
