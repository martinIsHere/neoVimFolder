return {
	"nvim-treesitter/nvim-treesitter",
	event = { "BufReadPre", "BufNewFile" },
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = {
				"lua",
				"c",
				"cpp",
				"python",
				"javascript",
				"typescript",
				"cmake",
				"dockerfile",
				"git_config",
				"git_rebase",
				"gitattributes",
				"gitcommit",
				"gitignore",
				"go",
				"latex",
				"make",
				"regex",
				"robot",
				"toml",
				"yaml",
				"zig",
			},
			highlight = { enable = true },
			indent = { enable = true },
		})
	end,
}
