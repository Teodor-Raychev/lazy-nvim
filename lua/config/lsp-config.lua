-- fidget:
local fidget = require("fidget")
fidget.setup({})

-- TreesitterContext
local tree_context = require('treesitter-context')

tree_context.setup{
  max_lines = 8,
}

-- CMP
local cmp = require("cmp")

cmp.setup({
	window = {
		completion = cmp.config.window.bordered(),
		documentation = cmp.config.window.bordered(),
	},
})

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

-- Diagnostics
-- vim.cmd("hi DiagnosticsInfo guifg=#c1f1f7")
require("ruby-lsp").setup()
local float = { focusable = true, style = "minimal", border = "rounded", }
local lspconfig = require("lspconfig")
local handlers = {
	-- ["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, { border = "rounded" }),
	-- ["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, { border = "rounded" }),
	["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, float),
	["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, float),
}
-- TODO create a proper loop
lspconfig.solargraph.setup({
	handlers = handlers,
})
lspconfig.ruby_lsp.setup({
  vscode = true,
  handlers = handlers,
  capabilities = capabilities,
  on_attach = on_attach,
  settings = server_name,
  filetypes = (server_name or {}).filetypes,
})
lspconfig.lua_ls.setup({
	handlers = handlers,
})
lspconfig.tsserver.setup({
	handlers = handlers,
})
lspconfig.clangd.setup({
	handlers = handlers,
})
-- include hbs limited support
vim.cmd('autocmd BufRead,BufNewFile *.hbs set filetype=html')

-- silent hover 
local banned_messages = {
  "No information available",
  "Welcome to LazyVim!",
}
vim.notify = function(msg, ...)
  for _, banned in ipairs(banned_messages) do
    if msg:find(banned) then
      return
    end
  end
  return require("notify")(msg, ...)
end

