-- vim.api.nvim_set_keymap("i", "jk", "<ESCAPE>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>w", "<cmd>w<CR>", { noremap = true, silent = true, desc = "[W]rite buffer" })

-- split keybind
vim.api.nvim_set_keymap(
	"n",
	"<leader>s",
	"<cmd>vsp<CR>",
	{ noremap = true, silent = true, desc = "[S]plit vertically" }
)
vim.api.nvim_set_keymap(
	"n",
	"<leader>S",
	"<cmd>sp<CR>",
	{ noremap = true, silent = true, desc = "[S]plit horizontally" }
)

-- mapping "t"
pcall(vim.api.nvim_del_keymap, "n", "t")
pcall(vim.api.nvim_del_keymap, "n", "T")
vim.api.nvim_set_keymap(
	"n",
	"t",
	"}",
	{ noremap = true, silent = true, desc = "[T]ake step forward to next paragraph" }
)
vim.api.nvim_set_keymap(
	"n",
	"T",
	"{",
	{ noremap = true, silent = true, desc = "[T]ake step backward to next paragraph" }
)

-- removes the ^M line endings when copying from windows to wsl
vim.api.nvim_set_keymap(
	"n",
	"<leader>cm",
	":let @/ = ''<CR>:%s/\\r//g<CR>",
	{ noremap = true, silent = true, desc = "Removes [C]opied line endings [M]^ from file." }
)

-- copy path to current buffer to system clipboard
vim.api.nvim_set_keymap(
	"n",
	"<leader>ybn",
	":let @+ = expand(' % ')<CR>",
	{ noremap = true, silent = true, desc = "[Y]ank [B]uffer [N]ame to clipboard" }
)
vim.api.nvim_set_keymap(
	"n",
	"<leader>yfp",
	":let @+ = expand('%:p')<CR>",
	{ noremap = true, silent = true, desc = "[Y]ank [F]ile [P]ath to clipboard" }
)
