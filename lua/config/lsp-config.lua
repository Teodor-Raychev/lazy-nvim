-- fidget:
local fidget = require("fidget")
fidget.setup({})

-- CMP
local cmp = require("cmp")

cmp.setup({
	window = {
		completion = cmp.config.window.bordered(),
		documentation = cmp.config.window.bordered(),
	},
})

-- Theme setup for lsp
-- color override
require('palenightfall').configure_colors({
  -- violet = '#82aaff',
  violet = '#89ddff'
})
-- re-set the theme
require('palenightfall').setup({
  transparent = true,
})

-- override border colors. This will override theme colloer as well.
-- vim.cmd("hi NormalFloat guibg=#605beb")
-- vim.cmd("hi FloatBorder guibg=#32302F guifg=#F2E2C3")
vim.cmd("hi FloatBorder guifg=#605beb")
local lspconfig = require("lspconfig")
local handlers = {
	["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, { border = "rounded" }),
	["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, { border = "rounded" }),
}
-- TODO create a proper loop
lspconfig.solargraph.setup({
	handlers = handlers,
})
lspconfig.ruby_lsp.setup({
  handlers = handlers,
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
  "ruby_ls is deprecated, use ruby_lsp instead.",
}
vim.notify = function(msg, ...)
  for _, banned in ipairs(banned_messages) do
    if msg:find(banned) then
      return
    end
  end
  return require("notify")(msg, ...)
end

