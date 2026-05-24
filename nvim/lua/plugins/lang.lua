-- lang.lua
-- Language support and treesitter parsers

return {
	-- Treesitter parsers
	{
		"nvim-treesitter/nvim-treesitter",
		opts = function(_, opts)
			vim.list_extend(opts.ensure_installed, {
				"bash",
				"html",
				"javascript",
				"json",
				"lua",
				"markdown",
				"markdown_inline",
				"python",
				"query",
				"regex",
				"rust",
				"tsx",
				"typescript",
				"vim",
				"yaml",
			})
		end,
	},

	-- Mason: ensure these tools are always installed
	{
		"mason-org/mason.nvim",
		opts = {
			ensure_installed = {
				"stylua", -- Lua formatter
				"shellcheck", -- Shell script linter
				"shfmt", -- Shell script formatter
				"prettierd", -- JS/TS formatter
			},
		},
	},
}
