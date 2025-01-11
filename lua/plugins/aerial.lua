return {
	"stevearc/aerial.nvim",
	opts = {},
	dependencies = {
		"nvim-treesitter/nvim-treesitter",
		"nvim-tree/nvim-web-devicons",
	},
	keys = {
		{ "<leader>O", ":AerialToggle<CR>", desc = "[O]verview" }, 
		{ "<leader>o", ":AerialNavToggle<CR>", desc = "[O]pen quickOverview" },
	},
}
