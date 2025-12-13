-- Set leader key
vim.g.mapleader = " "

vim.opt.clipboard = "unnamedplus"

-- set colorscheme
vim.cmd[[colorscheme sorbet]]

-- setup lazy
require("config.lazy")

-- Enable line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Set tab behavior
vim.opt.tabstop = 2       -- Number of spaces per tab
vim.opt.shiftwidth = 2    -- Indentation width
vim.opt.expandtab = true  -- Use spaces instead of tabs

vim.opt.clipboard = "unnamedplus"

vim.opt.encoding = "utf-8"

-- Use PowerShell Core if you have it (recommended)
vim.opt.shell = "pwsh.exe"  -- path usually on PATH as "pwsh.exe"

-- Or use Windows PowerShell if you prefer
-- vim.opt.shell = "powershell.exe"

-- Optional: nicer flags for running shell commands
vim.opt.shellcmdflag = "-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command"
vim.opt.shellquote = ""
vim.opt.shellxquote = ""

-- Enable mouse support
vim.opt.mouse = "a"


--require("user.plugins")

-- Enable syntax highlighting and colors
vim.opt.termguicolors = true
vim.cmd([[syntax on]])

-- Persistent undo
vim.opt.undofile = true

-- Disable backup files
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.swapfile = false

-- Enable incremental search
vim.opt.incsearch = true
vim.opt.hlsearch = true


require("vim-options")
require("vim-keybinds")

-- Highlight the screen line of the cursor
vim.opt.cursorline = true

-- Set the number of screen lines to keep above and below the cursor
vim.opt.scrolloff = 10

-- Map '¤' to '$' in normal, visual, select, and operator-pending modes
vim.api.nvim_set_keymap('n', '\u{00A4}', '$', { noremap = true, silent = true }) -- Normal mode
vim.api.nvim_set_keymap('v', '\u{00A4}', '$', { noremap = true, silent = true }) -- Visual mode
vim.api.nvim_set_keymap('x', '\u{00A4}', '$', { noremap = true, silent = true }) -- Visual block mode
vim.api.nvim_set_keymap('s', '\u{00A4}', '$', { noremap = true, silent = true }) -- Select mode
vim.api.nvim_set_keymap('o', '\u{00A4}', '$', { noremap = true, silent = true }) -- Operator-pending mode

vim.keymap.set('n', 'dil', "dd:let @+=matchlist(strtrans(@+),'[ ]*\\zs.*\\ze\\^@')[0]<CR>")

-- Bind Alt + ø to Esc in Normal, Insert, and Visual modes
vim.api.nvim_set_keymap('n', '<M-ø>', '<Esc>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<M-ø>', '<Esc>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<M-ø>', '<Esc>', { noremap = true, silent = true })
