return { --
	"stevearc/oil.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("oil").setup({
			keymaps = {
				["<leader>cd"] = { "actions.cd", mode = "n", silent = true },
				["<leader>z"] = { "actions.open_terminal", mode = "n", silent = true },
				["<leader>x"] = { "actions.open_external", mode = "n", silent = true },
			},
		})

		-- local map = function(keys, func, desc)
		-- 	if desc then
		-- 		desc = "LSP: " .. desc
		-- 	end
		-- 	vim.api.nvim_buf_set_keymap(
		-- 		bufnr,
		-- 		"n",
		-- 		keys,
		-- 		"",
		-- 		{ noremap = true, silent = true, callback = func, desc = desc }
		-- 	)
		-- end
		--
		vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
	end,
}
