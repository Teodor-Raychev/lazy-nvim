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

-- Ruby
-- For ruby each version must have ruby-lsp gem installed e.g. 3.3.0, 3.3.1 .. (gem install ruby-lsp)
-- local capabilities = vim.lsp.protocol.make_client_capabilities()
-- local mason_lspconfig = require("mason-lspconfig")
-- local servers = {
--   ruby_lsp = {},
-- }
--
-- mason_lspconfig.setup {
--   ensure_installed = vim.tbl_keys(servers),
-- }
--
-- mason_lspconfig.setup_handlers {
--   function(server_name)
--     require("lspconfig")[server_name].setup {
--       capabilities = capabilities,
--       on_attach = on_attach,
--       settings = servers[server_name],
--       filetypes = (servers[server_name] or {}).filetypes,
--     }
--   end
-- }

-- local configs = require("lspconfig.configs")
-- local util = require("lspconfig.util")
--
-- if not configs.ruby_lsp then
-- 	local enabled_features = {
-- 		"documentHighlights",
-- 		"documentSymbols",
-- 		"foldingRanges",
-- 		"selectionRanges",
-- 		-- "semanticHighlighting",
-- 		"formatting",
-- 		"codeActions",
-- 	}
--
-- 	configs.ruby_lsp = {
-- 		default_config = {
-- 			cmd = { "bundle", "exec", "ruby-lsp" },
-- 			filetypes = { "ruby" },
-- 			root_dir = util.root_pattern("Gemfile", ".git"),
-- 			init_options = {
-- 				enabledFeatures = enabled_features,
-- 			},
-- 			settings = {},
-- 		},
-- 		commands = {
-- 			FormatRuby = {
-- 				function()
-- 					vim.lsp.buf.format({
-- 						name = "ruby_lsp",
-- 						async = true,
-- 					})
-- 				end,
-- 				description = "Format using ruby-lsp",
-- 			},
-- 		},
-- 	}
-- end
--
-- lspconfig.ruby_lsp.setup({ on_attach = on_attach, capabilities = capabilities })
