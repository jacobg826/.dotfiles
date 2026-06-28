-- completion.lua
-- Completion and snippet configuration

return {
	-- Disable default LuaSnip tab keymaps so supertab can take over
	{
		"L3MON4D3/LuaSnip",
		keys = function()
			return {}
		end,
	},

	-- blink config
	{
		"saghen/blink.cmp",
		opts = {
			keymap = {
				["<CR>"] = { "accept", "fallback" },
				["<Tab>"] = { "select_next", "snippet_forward", "fallback" },
				["<S-Tab>"] = { "select_prev", "snippet_backward", "fallback" },
				["<C-j>"] = { "select_next", "fallback" },
				["<C-k>"] = { "select_prev", "fallback" },
			},
		},
	},
}
