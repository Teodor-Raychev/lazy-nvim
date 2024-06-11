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
lspconfig.ruby_lsp.setup({
  vscode = true,
  handlers = handlers,
  capabilities = capabilities,
  on_attach = on_attach,
  settings = server_name,
  filetypes = (server_name or {}).filetypes,
})
-- Node version is also considered for python.
-- If < 14 version is used the lsp client won't work
-- happens with nvm mostly.
lspconfig.pyright.setup({
  handlers = handlers,
  root_dir = function()
    return vim.fn.getcwd()
  end,
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
lspconfig.html.setup({
  handlers = handlers,
})
lspconfig.bashls.setup({
  handlers = handlers,
})
-- include hbs limited support
vim.cmd('autocmd BufRead,BufNewFile *.hbs set filetype=html')

-- silent hover 
local banned_messages = {
  "No information available",
  "Welcome to LazyVim!",
  "[lspconfig] unhandled error:",
}

vim.notify = function(msg, ...)
  for _, banned in ipairs(banned_messages) do
    if msg:find(banned) then
      return
    end
  end
  return require("notify")(msg, ...)
end

