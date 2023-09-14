return {
	"nvim-treesitter/nvim-treesitter",
	dependencies = {
		{
			"nvim-treesitter/nvim-treesitter-textobjects",
			"windwp/nvim-ts-autotag",
			"JoosepAlviste/nvim-ts-context-commentstring",
			init = function()
				-- disable rtp plugin, as we only need its queries for mini.ai
				-- In case other textobject modules are enabled, we will load them
				-- once nvim-treesitter is loaded
				require("lazy.core.loader").disable_rtp_plugin("nvim-treesitter-textobjects")
				load_textobjects = true
			end,
		},
	},
	---@type TSConfig
	opts = {
		highlight = { enable = true },
		indent = { enable = true },
		ensure_installed = {
			"astro",
			"bash",
			"c",
			"html",
			"javascript",
			"jsdoc",
			"json",
			"json5",
			"jsonc",
			"lua",
			"luadoc",
			"luap",
			"markdown",
			"markdown_inline",
			"ninja",
			"python",
			"query",
			"regex",
			"rst",
			"svelte",
			"toml",
			"tsx",
			"typescript",
			"vue",
			"vim",
			"vimdoc",
			"yaml",
		},
	},
}
