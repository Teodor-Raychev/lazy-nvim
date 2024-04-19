-- palenight theme
-- return {
--   "alexmozaidze/palenight.nvim",
--   lazy = false,
--   priority = 1000,
--   opts = {},
--   config = function()
--     vim.cmd([[colorscheme palenight]])
--   end,
-- }

-- return {
--   -- Theme NeoTokyo
--   "tokyonight.nvim",
--   lazy = true,
--   priority = 1000,
--   opts = {
--     transparent = true,
--     styles = {
--       sidebars = "transparent",
--       floats = "transparent",
--     },
--   },
--   config = function()
--     vim.cmd([[colorscheme tokyonight-storm]])
--   end,
-- }
-- return {
--   "folke/tokyonight.nvim",
--   lazy = false,
--   priority= 10000,
--   opts = {
--     transparent = true,
--     style = "storm",
--     styles = {
--       sidebars = "transparent",
--       floats = "transparent",
--     },
--   },
-- }
-- return {
-- 	{
-- 		--"rose-pine/neovim",
-- 		"marko-cerovac/material.nvim",
-- 		lazy = false,
-- 		priority = 1000,
-- 		-- name = "material",
-- 		opts = {
-- 			transparent = true,
-- 			sidebars = "transparent",
-- 			floats = "transparent",
-- 		},
-- 		config = function()
-- 			local configs = require("material")
-- 			configs.setup({
-- 				disable = { background = true },
-- 				lualine_style = "stealth",
--
-- 			})		
-- 		end
-- 	},
-- 	{
-- 		"folke/LazyVim",
-- 		opts = {
-- 			colorscheme = "material",
-- 			floats = "transparent",
-- 		},
-- 	},
-- }
return {
	{
		"catppuccin/nvim",
		lazy = false,
		priority = 1000,
		name = "catppuccin",
		opts = {
			transparent = true,
			sidebars = "transparent",
			floats = "transparent",
		},
		config = function()
			local configs = require("catppuccin")
			configs.setup({
				flavour = "frappe", -- latte, frappe, macchiato, mocha
				transparent_background = true,

			})		
		end
	},
	{
		"folke/LazyVim",
		opts = {
			colorscheme = "catppuccin",
		},
	},
}


