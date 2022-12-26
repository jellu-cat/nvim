local g   = vim.g
local o   = vim.o
local opt = vim.opt

-- General

o.history = 50

-- cmd('syntax on')
-- vim.api.nvim_command('filetype plugin indent on')

-- When a file is changed from the outside
o.autoread = true

-- Encoding
opt.encoding     = 'utf8'
opt.fileencoding = 'utf8'

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
o.smartcase  = true
o.hlsearch   = false
o.incsearch  = true

-- Don't redraw when executing macros
o.lazyredraw = true

-- regex
o.magic = true

-- o.showmatch = true

-- Numbers
o.number         = true
o.numberwidth    = 6
o.relativenumber = true
-- opt.signcolumn   = 'yes'
o.cursorline     = true
opt.colorcolumn  = '80'

o.t_co          = 256
o.termguicolors = true
o.background    = 'light'

-- Undo and backup

o.backup      = true
o.writebackup = true
o.swapfile    = true
o.undofile    = true

o.backupdir   = '/tmp'
o.directory   = '/tmp'
o.undodir     = '/tmp'

--> Text, tabs and indent

o.expandtab  = true
o.smarttab   = true
-- o.cindent = true
o.autoindent = true

-- 1 tab == 4 spaces
o.shiftwidth = 4
o.tabstop    = 4

o.wrap      = true
o.textwidth = 300

o.list        = true
opt.listchars = {
    -- This appear in all the document
    -- eol        = '¬';
    -- space      = '·';
    -- multispace = '···+';

    -- This doesn't work because 1 tab == 4 spaces
    -- tab = '»·';

    trail    = '·';
    extends  = '▸';
    precedes = '◂';
}
-- o.formatoptions = 'qrn1'

--> Clipboard

o.clipboard = 'unnamedplus'

--> Folds

o.foldmethod = 'manual'

--> Buffer split

o.splitright = true
o.splitbelow = true
