local g = vim.g
local o = vim.o

-- General

g.mapleader = ' '
g.maplocalleader = ' '

o.history = 50

-- cmd('syntax on')
-- vim.api.nvim_command('filetype plugin indent on')

-- When a file is changed from the outside
o.autoread = true

-- User Interface

-- Screen lines to keep above and below the cursor
o.scrolloff = 7

-- Update time
o.timeoutlen = 500
o.updatetime = 200

-- Do not save when switching buffers
o.hidden = true

-- Searching
o.ignorecase = true
o.smartcase = true
o.hlsearch = false
o.incsearch = true

-- Don't redraw when executing macros
o.lazyredraw = true

-- regex
o.magic = true

-- o.showmatch = true

-- Numbers
o.number = true
o.numberwidth = 6
o.relativenumber = true
-- o.signcolumn = 'yes'
o.cursorline = true

-- Colors

o.termguicolors = true
o.background = 'dark'

-- g.tokyonight_style = "storm"

g.catppuccin_flavour = 'latte'
require('catppuccin').setup()

vim.cmd [[colorscheme tokyonight]]

-- Undo and backup

o.backup = true
o.writebackup = true
o.swapfile = true
o. undofile = true

o.backupdir = '/tmp'
o.directory = '/tmp'
o.undodir = '/tmp'

--> Text, tabs and indent

o.expandtab = true
o.smarttab = true
-- o.cindent = true
o.autoindent = true

-- 1 tab == 4 spaces
o.shiftwidth = 4
o.tabstop = 4

o.wrap = true
o.textwidth = 300

o.list = true
o.listchars = 'trail:·,nbsp:◇,tab:→ ,extends:▸,precedes:◂'
-- o.listchars = 'eol:¬,space:·,lead: ,trail:·,nbsp:◇,tab:→-,extends:▸,precedes:◂,multispace:···⬝,leadmultispace:│   ,'
-- o.formatoptions = 'qrn1'

--> Clipboard
o.clipboard = 'unnamedplus'

--> Folds

o.foldmethod = 'manual'

--> Buffer split

o.splitright = true
o.splitbelow = true
