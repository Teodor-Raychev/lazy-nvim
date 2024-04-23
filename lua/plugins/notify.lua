return {
	{
		"rcarriga/nvim-notify",
		-- keys = {
		-- 	{
		-- 		"<leader>un",
		-- 		function()
		-- 			require("notify").dismiss({ silent = true, pending = true })
		-- 		end,
		-- 		desc = "Dismiss All Notifications",
		-- 	},
		-- },
		config = function()
			local notify = require("notify")
			vim.opt.termguicolors = true
			notify.setup({
				background_colour = "#1a1b26",
			})
			-- Use notify:
			vim.notify = notify
		end,
	},
}
