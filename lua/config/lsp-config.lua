-- fidget:
local fidget = require("fidget")
fidget.setup({})

-- CMP
local cmp = require("cmp")

cmp.setup({
	-- sources = {
	--   { name = 'nvim_lsp' },
	--   { name = 'luasnip' },
	--   { name = 'nvim_lsp_signature_help' },
	-- },
	-- mapping = {
	--   ['<CR>'] = cmp.mapping.confirm({ select = false }),
	-- },
	window = {
		completion = cmp.config.window.bordered(),
		documentation = cmp.config.window.bordered(),
	},
	-- snippet = {
	--   expand = function(args)
	--     require('luasnip').lsp_expa:wnd(args.body)
	--   end
	-- }
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
