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

	-- Rust config
	{
		"mrcjkb/rustaceanvim",
		opts = {
			server = {
				default_settings = {
					["rust-analyzer"] = {
						-- This is the "Magic Switch" to make it work on Stable Rust
						cargo = {
							extraArgs = { "--profile", "check" },
						},
						check = {
							command = "clippy",
						},
					},
				},
			},
		},
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
