-- tools.lua
-- Terminal and search tools
return {
	-- Floating terminal
	{
		"akinsho/toggleterm.nvim",
		version = "*",
		config = function()
			require("toggleterm").setup({
				open_mapping = [[<leader>t]],
				direction = "float",
				size = 20,
				float_opts = {
					border = "curved",
				},
			})
		end,
		keys = {
			{ "<leader>t", "<cmd>ToggleTerm<cr>", desc = "Toggle Terminal" },
		},
	},
	-- Telescope fuzzy finder
	{
		"nvim-telescope/telescope.nvim",
		keys = {
			{
				"<leader>fp",
				function()
					require("telescope.builtin").find_files({
						cwd = require("lazy.core.config").options.root,
					})
				end,
				desc = "Find Plugin File",
			},
		},
		opts = {
			defaults = {
				layout_strategy = "horizontal",
				layout_config = { prompt_position = "top" },
				sorting_strategy = "ascending",
				winblend = 0,
			},
		},
	},
}
