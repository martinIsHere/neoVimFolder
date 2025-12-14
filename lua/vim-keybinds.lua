-- map function
local nmap = function(key, func, _desc)
  vim.api.nvim_set_keymap(
    "n",
    key,
    func,
    { noremap = true, silent = true, desc = _desc }
  )
end

local vmap = function(key, func, _desc)
  vim.api.nvim_set_keymap(
    "v",
    key,
    func,
    { noremap = true, silent = true, desc = _desc }
  )
end

local nmap_recursive = function(key, func, _desc)
  vim.api.nvim_set_keymap(
    "n",
    key,
    func,
    { noremap = false, silent = true, desc = _desc }
  )
end

local vmap_recursive = function(key, func, _desc)
  vim.api.nvim_set_keymap(
    "v",
    key,
    func,
    { noremap = false, silent = true, desc = _desc }
  )
end

-- vim.api.nvim_set_keymap("i", "jk", "<ESCAPE>", { noremap = true, silent = true })
nmap("<leader>w", "<cmd>w<cr>", "[W]rite buffer")
-- vim.api.nvim_set_keymap("n", "<leader>w", "<cmd>w<CR>", { noremap = true, silent = true, desc = "[W]rite buffer" })

-- delete buffer
nmap("<leader>bd", "<cmd>bd<cr>", "buffer delete")

-- open new buffer
nmap("<leader>bo", "<cmd>enew<cr>", "buffer open")

-- copy path to cwd
nmap(
  "<leader>dq",
  "<cmd>let @* = '\"' . getcwd() . '\"'<CR>",
  "[Y]ank [D]irectoy [Q]uoted"
)
nmap(
  "<leader>dp",
  "<cmd>let @* = getcwd()<CR>",
  "[Y]ank [D]irectoy [P]ath"
)

-- print current working directoy
nmap(
  "<leader>G",
  "<cmd>pwd<CR>",
  "print current working directoy"

)
-- set cwd to parent dir of current file
nmap(
  "<leader>cd",
  "<cmd>cd %:p:h<CR>",
  "print current working directoy"
)

-- terminal
nmap(
  "<leader>zz",
  "<cmd>vsplit +terminal<CR>",
  "Open terminal"
)
nmap(
  "<leader>ZZ",
  "<cmd>split +terminal<CR>",
  "Open terminal"
)
nmap(
  "<leader>zx",
  "<cmd>vsplit +terminal<CR>",
  "Open terminal"
)

-- split and tab keybinds
nmap(
  "<leader>ts",
  "<cmd>tab split<CR>",
  "[T]ab-[S]plit current buffer"
)
nmap(
  "<leader>tc",
  "<cmd>tabclose<CR>",
  "[T]ab-[C]lose current tab"
)
nmap(
  "<leader>h",
  "gT",
  "Go to previous tab"
)
nmap(
  "<leader>l",
  "gt",
  "Go to next tab"
)
-- nmap(
--   "<leader>s",
--   "<cmd>vsp<CR>",
--   "[S]plit vertically"
-- )
-- nmap(
--   "<leader>S",
--   "<cmd>sp<CR>",
--   "[S]plit horizontally"
-- )

-- quit buffer
nmap(
	"<leader>Q",
	"<cmd>q<CR>",
	"QUIT"
)

-- mapping "t"
pcall(vim.api.nvim_del_keymap, "n", "t")
pcall(vim.api.nvim_del_keymap, "n", "T")
pcall(vim.api.nvim_del_keymap, "v", "t")
pcall(vim.api.nvim_del_keymap, "v", "T")
nmap("t", "}", "[T]o next paragraph")
nmap("T", "{", "[T]o previous paragraph")
vmap("t", "}", "[T]o next paragraph")
vmap("T", "{", "[T]o previous paragraph")

-- removes the ^M line endings when copying from windows to wsl
nmap(
	"<leader>cm",
	":let @/ = ''<CR>:%s/\\r//g<CR>",
	"Removes [C]opied line endings [M]^ from file."
)

-- centering
nmap(
	"n",
	"nzz",
	"next"
)
nmap(
	"N",
	"Nzz",
	"previous"
)
nmap(
	"<C-d>",
	"<C-d>zz",
	"down half"
)
nmap(
	"<C-u>",
	"<C-u>zz",
	"up half"
)
nmap(
	"<C-f>",
	"<C-f>zz",
	"down full"
)
nmap(
	"<C-b>",
	"<C-b>zz",
	"down up"
)
nmap(
	"<C-o>",
	"<C-o>zz",
	"out"
)
nmap(
	"<C-i>",
	"<C-i>zz",
	"in"
)

-- ctrl-a
pcall(vim.api.nvim_del_keymap, "n", "<C-a>")
nmap(
	"<C-a>",
	"ggVG",
	"select all"
)

-- recursive-bracket bind
nmap_recursive(
  "æ",
  "]",
  "æ -> ]"
)
nmap_recursive(
  "Æ",
  "[",
  "æ -> ]"
)

-- copy path to current buffer to system clipboard
nmap(
	"<leader>ybn",
	":let @+ = expand(' % ')<CR>",
	"[Y]ank [B]uffer [N]ame to clipboard"
)
nmap(
	"<leader>yfp",
	":let @+ = expand('%:p')<CR>",
	"[Y]ank [F]ile [P]ath to clipboard"
)
