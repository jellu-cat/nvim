local map = vim.api.nvim_set_keymap
local kmset = vim.keymap.set

-- leader key
map('n', '<Space>', '', {})
vim.g.mapleader = ' '

--[[ map(mode, keys, command, options) ]]
map('i', 'jj', '<Esc>', {})

-- Movement
map('n', '0', '^', {})

-- Fast saving
map('n', '<Leader>w', ':w!<CR>', {})
map('n', '<Leader>q', ':wq!<CR>', {})
map('n', '<Leader>op', ':so %<Cr>', {})

-- Plugin Related
map('n', '<Leader>n', ':NvimTreeToggle<Cr>', {})
map('n', '<Leader>t', ':FloatermToggle<Cr>', {})
map('n', '<Leader>c', ':ColorizerToggle<Cr>', {})


-- Netrw
map('n', '<leader>ex', ':Ex<Cr>', {})

map('n', '<Leader>sb', 'i#!/bin/bash<Esc>0', {})
