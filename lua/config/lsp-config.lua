-- fidget:
local fidget = require("fidget")
fidget.setup({})

-- TreesitterContext
-- local tree_context = require("treesitter-context")
--
-- tree_context.setup{
--   max_lines = 8,
-- }

-- CMP
local cmp = require("cmp")

cmp.setup({
  window = {
    completion = cmp.config.window.bordered(),
    documentation = cmp.config.window.bordered(),
  },
})

-- Testings
local neo_test = require("neotest")
neo_test.setup({
  adapters = {
    require("neotest-rspec")({
      rspec_cmd = function()
        return vim.tbl_flatten({
          "bundle",
          "exec",
          "rspec",
        })
      end
    }),
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
  ["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, float),
}

-- Diagnostics
vim.diagnostic.config {
  virtual_text = false,
  signs = true,
  underline = true,
  float = {
    source = "always",
    style = "minimal",
    border = "rounded",
  }
}

-- make
vim.diagnostic.open_float = (function(orig)
  return function(opts)
    local lnum = vim.api.nvim_win_get_cursor(0)[1] - 1
    -- A more robust solution would check the "scope" value in `opts` to
    -- determine where to get diagnostics from, but if you're only using
    -- this for your own purposes you can make it as simple as you like
    local diagnostics = vim.diagnostic.get(opts.bufnr or 0, { lnum = lnum })
    local max_severity = vim.diagnostic.severity.HINT
    for _, d in ipairs(diagnostics) do
      -- Equality is "less than" based on how the severities are encoded
      if d.severity < max_severity then
        max_severity = d.severity
      end
    end
    -- local border_color = ({
    --     [vim.diagnostic.severity.HINT] = "NonText",
    --     [vim.diagnostic.severity.INFO] = "Question",
    --     [vim.diagnostic.severity.WARN] = "WarningMsg",
    --     [vim.diagnostic.severity.ERROR] = "ErrorMsg",
    -- })[max_severity]
    -- opts.border = {
    --     { "╔" , border_color },
    --     { "═" , border_color },
    --     { "╗" , border_color },
    --     { "║" , border_color },
    --     { "╝" , border_color },
    --     { "═" , border_color },
    --     { "╚" , border_color },
    --     { "║" , border_color },
    -- }
    orig(opts)
  end
end)(vim.diagnostic.open_float)


-- Setup Handlers for LSP servers:
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

-- include hbs, rbs limited support
vim.cmd('autocmd BufRead,BufNewFile *.hbs set filetype=html')
vim.cmd('autocmd BufRead,BufNewFile *.rbs set filetype=html')

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
