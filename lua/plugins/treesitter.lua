local Plugin = { "nvim-treesitter/nvim-treesitter" }

Plugin.dependencies = {
	{ "nvim-treesitter/nvim-treesitter-textobjects" },
	{ "windwp/nvim-ts-autotag" },
}

-- See :help nvim-treesitter-modules
Plugin.opts = {
	highlight = {
		enable = true,
	},
	-- :help nvim-treesitter-textobjects-modules
	textobjects = {
		select = {
			enable = true,
			lookahead = true,
			keymaps = {
				["af"] = "@function.outer",
				["if"] = "@function.inner",
				["ac"] = "@class.outer",
				["ic"] = "@class.inner",
			},
		},
	},
	ensure_installed = {
		"javascript",
		"typescript",
		"tsx",
		"lua",
		"vim",
		"vimdoc",
		"css",
		"json",
		"html",
	},
}

function Plugin.config(opts)
	require("nvim-treesitter.configs").setup(opts)
	require("nvim-ts-autotag").setup()
end

return Plugin
