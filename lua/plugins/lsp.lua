return {
  { "nvim-lua/plenary.nvim" },
  -- {
  -- 	"neovim/nvim-lspconfig",
  -- 	event = { "BufReadPre", "BufNewFile" },
  -- 	dependencies = {
  -- 		"hrsh7th/cmp-nvim-lsp",
  -- 		{ "antosha417/nvim-lsp-file-operations", config = true },
  -- 		{ "folke/neodev.nvim", opts = {} },
  -- 	},
  -- 	config = function()
  -- 		-- import lspconfig plugin
  -- 		local lspconfig = require("lspconfig")
  --
  -- 		-- import mason_lspconfig plugin
  -- 		local mason_lspconfig = require("mason-lspconfig")
  --
  -- 		-- import cmp-nvim-lsp plugin
  -- 		local cmp_nvim_lsp = require("cmp_nvim_lsp")
  --
  -- 		local keymap = vim.keymap -- for conciseness
  --
  -- 		vim.api.nvim_create_autocmd("LspAttach", {
  -- 			group = vim.api.nvim_create_augroup("UserLspConfig", {}),
  -- 			callback = function(ev)
  -- 				-- Buffer local mappings.
  -- 				-- See `:help vim.lsp.*` for documentation on any of the below functions
  -- 				local opts = { buffer = ev.buf, silent = true }
  --
  -- 				-- set keybinds
  -- 				opts.desc = "Show LSP references"
  -- 				keymap.set("n", "gR", "<cmd>Telescope lsp_references<CR>", opts) -- show definition, references
  --
  -- 				opts.desc = "Go to declaration"
  -- 				keymap.set("n", "gD", vim.lsp.buf.declaration, opts) -- go to declaration
  --
  -- 				opts.desc = "Show LSP definitions"
  -- 				keymap.set("n", "gd", "<cmd>Telescope lsp_definitions<CR>", opts) -- show lsp definitions
  --
  -- 				opts.desc = "Show LSP implementations"
  -- 				keymap.set("n", "gi", "<cmd>Telescope lsp_implementations<CR>", opts) -- show lsp implementations
  --
  -- 				opts.desc = "Show LSP type definitions"
  -- 				keymap.set("n", "gt", "<cmd>Telescope lsp_type_definitions<CR>", opts) -- show lsp type definitions
  --
  -- 				opts.desc = "See available code actions"
  -- 				keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts) -- see available code actions, in visual mode will apply to selection
  --
  -- 				opts.desc = "Smart rename"
  -- 				keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts) -- smart rename
  --
  -- 				opts.desc = "Show buffer diagnostics"
  -- 				keymap.set("n", "<leader>D", "<cmd>Telescope diagnostics bufnr=0<CR>", opts) -- show  diagnostics for file
  --
  -- 				opts.desc = "Show line diagnostics"
  -- 				keymap.set("n", "<leader>d", vim.diagnostic.open_float, opts) -- show diagnostics for line
  --
  -- 				opts.desc = "Go to previous diagnostic"
  -- 				keymap.set("n", "[d", vim.diagnostic.goto_prev, opts) -- jump to previous diagnostic in buffer
  --
  -- 				opts.desc = "Go to next diagnostic"
  -- 				keymap.set("n", "]d", vim.diagnostic.goto_next, opts) -- jump to next diagnostic in buffer
  --
  -- 				opts.desc = "Show documentation for what is under cursor"
  -- 				keymap.set("n", "K", vim.lsp.buf.hover, opts) -- show documentation for what is under cursor
  --
  -- 				opts.desc = "Restart LSP"
  -- 				keymap.set("n", "<leader>rs", ":LspRestart<CR>", opts) -- mapping to restart lsp if necessary
  -- 			end,
  -- 		})
  --
  -- 		-- used to enable autocompletion (assign to every lsp server config)
  -- 		local capabilities = cmp_nvim_lsp.default_capabilities()
  --
  -- 		-- Change the Diagnostic symbols in the sign column (gutter)
  -- 		-- (not in youtube nvim video)
  -- 		local signs = { Error = " ", Warn = " ", Hint = "󰠠 ", Info = " " }
  -- 		for type, icon in pairs(signs) do
  -- 			local hl = "DiagnosticSign" .. type
  -- 			vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
  -- 		end
  --
  -- 		mason_lspconfig.setup_handlers({
  -- 			-- default handler for installed servers
  -- 			function(server_name)
  -- 				lspconfig[server_name].setup({
  -- 					capabilities = capabilities,
  -- 				})
  -- 			end,
  -- 			["svelte"] = function()
  -- 				-- configure svelte server
  -- 				lspconfig["svelte"].setup({
  -- 					capabilities = capabilities,
  -- 					on_attach = function(client, bufnr)
  -- 						vim.api.nvim_create_autocmd("BufWritePost", {
  -- 							pattern = { "*.js", "*.ts" },
  -- 							callback = function(ctx)
  -- 								-- Here use ctx.match instead of ctx.file
  -- 								client.notify("$/onDidChangeTsOrJsFile", { uri = ctx.match })
  -- 							end,
  -- 						})
  -- 					end,
  -- 				})
  -- 			end,
  -- 			["graphql"] = function()
  -- 				-- configure graphql language server
  -- 				lspconfig["graphql"].setup({
  -- 					capabilities = capabilities,
  -- 					filetypes = { "graphql", "gql", "svelte", "typescriptreact", "javascriptreact" },
  -- 				})
  -- 			end,
  -- 			["emmet_ls"] = function()
  -- 				-- configure emmet language server
  -- 				lspconfig["emmet_ls"].setup({
  -- 					capabilities = capabilities,
  -- 					filetypes = {
  -- 						"html",
  -- 						"typescriptreact",
  -- 						"javascriptreact",
  -- 						"css",
  -- 						"sass",
  -- 						"scss",
  -- 						"less",
  -- 						"svelte",
  -- 					},
  -- 				})
  -- 			end,
  -- 			["lua_ls"] = function()
  -- 				-- configure lua server (with special settings)
  -- 				lspconfig["lua_ls"].setup({
  -- 					capabilities = capabilities,
  -- 					settings = {
  -- 						Lua = {
  -- 							-- make the language server recognize "vim" global
  -- 							diagnostics = {
  -- 								globals = { "vim" },
  -- 							},
  -- 							completion = {
  -- 								callSnippet = "Replace",
  -- 							},
  -- 						},
  -- 					},
  -- 				})
  -- 			end,
  -- 		})
  -- 	end,
  -- },

  -- folke's lspconfig
  {
    "neovim/nvim-lspconfig",
    -- event = "LazyFile",
    event = { "BufReadPost", "BufWritePost", "BufNewFile" },
    dependencies = {
      { "folke/neoconf.nvim", cmd = "Neoconf", config = false, dependencies = { "nvim-lspconfig" } },
      { "folke/neodev.nvim",  opts = {} },
      "mason.nvim",
      "williamboman/mason-lspconfig.nvim",
    },
    ---@class PluginLspOpts
    opts = {
      -- options for vim.diagnostic.config()
      ---@type vim.diagnostic.Opts
      diagnostics = {
        underline = true,
        update_in_insert = false,
        virtual_text = {
          spacing = 4,
          source = "if_many",
          prefix = "●",
          -- this will set set the prefix to a function that returns the diagnostics icon based on the severity
          -- this only works on a recent 0.10.0 build. Will be set to "●" when not supported
          -- prefix = "icons",
        },
        severity_sort = true,
        signs = {
          text = {
            [vim.diagnostic.severity.ERROR] = "",
            [vim.diagnostic.severity.WARN] = "",
            [vim.diagnostic.severity.HINT] = "",
            [vim.diagnostic.severity.INFO] = "",
          },
        },
      },
      -- Enable this to enable the builtin LSP inlay hints on Neovim >= 0.10.0
      -- Be aware that you also will need to properly configure your LSP server to
      -- provide the inlay hints.
      inlay_hints = {
        enabled = false,
      },
      -- Enable this to enable the builtin LSP code lenses on Neovim >= 0.10.0
      -- Be aware that you also will need to properly configure your LSP server to
      -- provide the code lenses.
      codelens = {
        enabled = false,
      },
      -- add any global capabilities here
      capabilities = {},
      -- options for vim.lsp.buf.format
      -- `bufnr` and `filter` is handled by the LazyVim formatter,
      -- but can be also overridden when specified
      format = {
        formatting_options = nil,
        timeout_ms = nil,
      },
      -- LSP Server Settings
      ---@type lspconfig.options
      servers = {
        lua_ls = {
          -- mason = false, -- set to false if you don't want this server to be installed with mason
          -- Use this to add any additional keymaps
          -- for specific lsp servers
          ---@type LazyKeysSpec[]
          -- keys = {},
          settings = {
            Lua = {
              workspace = {
                checkThirdParty = false,
              },
              codeLens = {
                enable = true,
              },
              completion = {
                callSnippet = "Replace",
              },
            },
          },
        },
      },
      -- you can do any additional lsp server setup here
      -- return true if you don't want this server to be setup with lspconfig
      ---@type table<string, fun(server:string, opts:_.lspconfig.options):boolean?>
      setup = {
        -- example to setup with typescript.nvim
        -- tsserver = function(_, opts)
        --   require("typescript").setup({ server = opts })
        --   return true
        -- end,
        -- Specify * to use this function as a fallback for any server
        -- ["*"] = function(server, opts) end,
      },
    },
    ---@param opts PluginLspOpts
    config = function(_, opts)
      if LazyVim.has("neoconf.nvim") then
        local plugin = require("lazy.core.config").spec.plugins["neoconf.nvim"]
        require("neoconf").setup(require("lazy.core.plugin").values(plugin, "opts", false))
      end

      -- setup autoformat
      LazyVim.format.register(LazyVim.lsp.formatter())

      -- setup keymaps
      LazyVim.lsp.on_attach(function(client, buffer)
        require("lazyvim.plugins.lsp.keymaps").on_attach(client, buffer)
      end)

      local register_capability = vim.lsp.handlers["client/registerCapability"]

      vim.lsp.handlers["client/registerCapability"] = function(err, res, ctx)
        ---@diagnostic disable-next-line: no-unknown
        local ret = register_capability(err, res, ctx)
        local client = vim.lsp.get_client_by_id(ctx.client_id)
        local buffer = vim.api.nvim_get_current_buf()
        require("lazyvim.plugins.lsp.keymaps").on_attach(client, buffer)
        return ret
      end

      -- diagnostics signs
      if vim.fn.has("nvim-0.10.0") == 0 then
        for severity, icon in pairs(opts.diagnostics.signs.text) do
          local name = vim.diagnostic.severity[severity]:lower():gsub("^%l", string.upper)
          name = "DiagnosticSign" .. name
          vim.fn.sign_define(name, { text = icon, texthl = name, numhl = "" })
        end
      end

      -- inlay hints
      if opts.inlay_hints.enabled then
        LazyVim.lsp.on_attach(function(client, buffer)
          if client.supports_method("textDocument/inlayHint") then
            LazyVim.toggle.inlay_hints(buffer, true)
          end
        end)
      end

      -- code lens
      if opts.codelens.enabled and vim.lsp.codelens then
        LazyVim.lsp.on_attach(function(client, buffer)
          if client.supports_method("textDocument/codeLens") then
            vim.lsp.codelens.refresh()
            --- autocmd BufEnter,CursorHold,InsertLeave <buffer> lua vim.lsp.codelens.refresh()
            vim.api.nvim_create_autocmd({ "BufEnter", "CursorHold", "InsertLeave" }, {
              buffer = buffer,
              callback = vim.lsp.codelens.refresh,
            })
          end
        end)
      end

      if type(opts.diagnostics.virtual_text) == "table" and opts.diagnostics.virtual_text.prefix == "icons" then
        opts.diagnostics.virtual_text.prefix = vim.fn.has("nvim-0.10.0") == 0 and "●"
            or function(diagnostic)
              local icons = require("lazyvim.config").icons.diagnostics
              for d, icon in pairs(icons) do
                if diagnostic.severity == vim.diagnostic.severity[d:upper()] then
                  return icon
                end
              end
            end
      end

      vim.diagnostic.config(vim.deepcopy(opts.diagnostics))

      local servers = opts.servers
      local has_cmp, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
      local capabilities = vim.tbl_deep_extend(
        "force",
        {},
        vim.lsp.protocol.make_client_capabilities(),
        has_cmp and cmp_nvim_lsp.default_capabilities() or {},
        opts.capabilities or {}
      )

      local function setup(server)
        local server_opts = vim.tbl_deep_extend("force", {
          capabilities = vim.deepcopy(capabilities),
        }, servers[server] or {})

        if opts.setup[server] then
          if opts.setup[server](server, server_opts) then
            return
          end
        elseif opts.setup["*"] then
          if opts.setup["*"](server, server_opts) then
            return
          end
        end
        require("lspconfig")[server].setup(server_opts)
      end

      -- get all the servers that are available through mason-lspconfig
      local have_mason, mlsp = pcall(require, "mason-lspconfig")
      local all_mslp_servers = {}
      if have_mason then
        all_mslp_servers = vim.tbl_keys(require("mason-lspconfig.mappings.server").lspconfig_to_package)
      end

      local ensure_installed = {} ---@type string[]
      for server, server_opts in pairs(servers) do
        if server_opts then
          server_opts = server_opts == true and {} or server_opts
          -- run manual setup if mason=false or if this is a server that cannot be installed with mason-lspconfig
          if server_opts.mason == false or not vim.tbl_contains(all_mslp_servers, server) then
            setup(server)
          elseif server_opts.enabled ~= false then
            ensure_installed[#ensure_installed + 1] = server
          end
        end
      end

      if have_mason then
        mlsp.setup({ ensure_installed = ensure_installed, handlers = { setup } })
      end

      if LazyVim.lsp.get_config("denols") and LazyVim.lsp.get_config("tsserver") then
        local is_deno = require("lspconfig.util").root_pattern("deno.json", "deno.jsonc")
        LazyVim.lsp.disable("tsserver", is_deno)
        LazyVim.lsp.disable("denols", function(root_dir)
          return not is_deno(root_dir)
        end)
      end
    end,
  },

  -- cmdline tools and lsp servers
  {

    "williamboman/mason.nvim",
    cmd = "Mason",
    keys = { { "<leader>cm", "<cmd>Mason<cr>", desc = "Mason" } },
    build = ":MasonUpdate",
    opts = {
      ensure_installed = {
        "stylua",
        "shfmt",
        -- "flake8",
      },
    },
    ---@param opts MasonSettings | {ensure_installed: string[]}
    config = function(_, opts)
      require("mason").setup(opts)
      local mr = require("mason-registry")
      mr:on("package:install:success", function()
        vim.defer_fn(function()
          -- trigger FileType event to possibly load this newly installed LSP server
          require("lazy.core.handler.event").trigger({
            event = "FileType",
            buf = vim.api.nvim_get_current_buf(),
          })
        end, 100)
      end)
      local function ensure_installed()
        for _, tool in ipairs(opts.ensure_installed) do
          local p = mr.get_package(tool)
          if not p:is_installed() then
            p:install()
          end
        end
      end
      if mr.refresh then
        mr.refresh(ensure_installed)
      else
        ensure_installed()
      end
    end,
  },
}
