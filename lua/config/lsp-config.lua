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

-- override border colors
-- vim.cmd("hi NormalFloat guibg=#32302F")
-- vim.cmd("hi FloatBorder guibg=#32302F guifg=#F2E2C3")
local lspconfig = require("lspconfig")
local handlers = {
	["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, { border = "rounded" }),
	["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, { border = "rounded" }),
}
lspconfig.solargraph.setup({
	handlers = handlers,
})
lspconfig.lua_ls.setup({
	handlers = handlers,
})
