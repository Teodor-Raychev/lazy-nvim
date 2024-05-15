-- Highlights overrides:
-- vim.cmd("hi NormalFloat guifg=#605beb")
-- vim.cmd("hi FloatBorder guibg=#32302F guifg=#F2E2C3")
vim.cmd("hi TreesitterContext guibg=#1e2124") -- TreeSitter context
vim.cmd("hi FloatBorder guifg=#605beb") -- override border colors. This will override theme colors as well.
-- Disable if theme is to be changed:
vim.cmd("hi TelescopePromptPrefix guifg=#f07178")
vim.cmd("hi TelescopePromptTitle guibg=#f07178")
vim.cmd("hi TelescopePreviewTitle guibg=#82ecfa")
-- Diagnostics
vim.cmd("hi DiagnosticVirtualTextWarn guifg=#a38e72")
vim.cmd("hi DiagnosticVirtualTextInfo guifg=#8e9191")
vim.cmd("hi DiagnosticVirtualTextHint guifg=#999acc")

-- Numbers:
local num_color = '#4d4d4d'
local num_accent = "#ff5ea0"

vim.api.nvim_set_hl(0, 'LineNrAbove', { fg=num_color, bold=true })
vim.api.nvim_set_hl(0, 'LineNr', { fg=num_accent, bold=true })
vim.api.nvim_set_hl(0, 'LineNrBelow', { fg=num_color, bold=true })
