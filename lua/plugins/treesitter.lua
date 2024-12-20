return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  dependencies = {
    "RRethy/nvim-treesitter-endwise",
    "windwp/nvim-ts-autotag"
  },
  config = function()
    require("nvim-treesitter.configs").setup({
      -- A list of parser names, or "all"
      ensure_installed = {
        "ruby", "vimdoc", "javascript", "typescript", "c", "lua", "rust",
        "jsdoc", "bash",
      },

      -- Install parsers synchronously (only applied to `ensure_installed`)
      sync_install = false,

      -- Automatically install missing parsers when entering buffer
      -- Recommendation: set to false if you don"t have `tree-sitter` CLI installed locally
      auto_install = true,

      endwise = {
        enable = true
      },

      autotag = {
        enable = true
      },

      indent = {
        enable = true
      },

      highlight = {
        -- `false` will disable the whole extension
        enable = true,

        -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
        -- Set this to `true` if you depend on "syntax" being enabled (like for indentation).
        -- Using this option may slow down your editor, and you may see some duplicate highlights.
        -- Instead of true it can also be a list of languages
        additional_vim_regex_highlighting = { "markdown" },
      },
    })
  end
}

-- event = { "BufReadPre", "BufNewFile" },
  -- build = ":TSUpdate",
  -- dependencies = {
  --   "andymass/vim-matchup",                        -- matchit replacement
  --   'nvim-treesitter/nvim-treesitter-textobjects', -- Syntax aware text objects
  --   {
  --     'nvim-treesitter/nvim-treesitter-context',                                          -- Code context
  --     config = function()
  --       require('treesitter-context').setup{ 
  --         enable = true,
  --         max_lines = 8,
  --         line_numbers = true,
  --         trim_scope = 'outer',
  --     }
  --   end,
  --   },
  --   'nvim-treesitter/nvim-treesitter-refactor', -- Refactoring support
  --   'RRethy/nvim-treesitter-endwise',           -- Complete end
  --   'windwp/nvim-ts-autotag',                   -- Auto close tags
  --   -- 'HiPhish/rainbow-delimiters.nvim' -- Rainbow delimiters
  -- },
  -- config = function()
  --   require('nvim-treesitter.configs').setup {
  --     textobjects = {
  --       select = {
  --         enable = true,
  --
  --         -- Automatically jump forward to textobj, similar to targets.vim
  --         lookahead = true,
  --
  --         keymaps = {
  --           -- You can use the capture groups defined in textobjects.scm
  --           ["af"] = "@function.outer",
  --           ["if"] = "@function.inner",
  --           ["ac"] = "@class.outer",
  --           ["ic"] = "@class.inner",
  --         },
  --         -- You can choose the select mode (default is charwise 'v')
  --         selection_modes = {
  --           ['@parameter.outer'] = 'v',   -- charwise
  --           ['@function.outer'] = 'V',    -- linewise
  --           ['@class.outer'] = '<c-v>',   -- blockwise
  --         },
  --         -- If you set this to `true` (default is `false`) then any textobject is
  --         -- extended to include preceding xor succeeding whitespace. Succeeding
  --         -- whitespace has priority in order to act similarly to eg the built-in
  --         -- `ap`.
  --         include_surrounding_whitespace = true,
  --       },
  --     },
  --     textsubjects = {
  --       enable = true,
  --       prev_selection = ',',   -- (Optional) keymap to select the previous selection
  --       keymaps = {
  --         ['.'] = 'textsubjects-smart',
  --         [';'] = 'textsubjects-container-outer',
  --         ['i;'] = 'textsubjects-container-inner',
  --       },
  --     },
  --     ensure_installed = { "ruby", "javascript", "typescript", "tsx", "vue", "html", "css", "scss", "lua", "c", "rust", "vim", "regex", "markdown", "markdown_inline", "json", "yaml" },   -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  --     ignore_install = {},                                                                                                                                                                 -- List of parsers to ignore installing
  --     highlight = {
  --       enable = true,                                                                                                                                                                     -- false will disable the whole extension
  --       disable = { "c", "rust" },                                                                                                                                                         -- list of language that will be disabled
  --       -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
  --       -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
  --       -- Using this option may slow down your editor, and you may see some duplicate highlights.
  --       -- Instead of true it can also be a list of languages
  --       additional_vim_regex_highlighting = { "ruby", "vim" },
  --     },
  --     refactor = {
  --       highlight_definitions = {
  --         enable = false,
  --         -- Set to false if you have an `updatetime` of ~100.
  --         clear_on_cursor_move = true,
  --       },
  --       highlight_current_scope = { enable = false },
  --     },
  --     endwise = {
  --       enable = true,
  --     },
  --     matchup = {
  --       enable = true,   -- mandatory, false will disable the whole extension
  --     },
  --     autotag = {
  --       enable = true,
  --     },
  --     context = {
  --       enable = false,
  --       max_lines = 5,
  --     }
  --   }
  -- end,
  -- }
