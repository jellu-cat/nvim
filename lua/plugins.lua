local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
  vim.cmd [[packadd packer.nvim]]
end

return require('packer').startup(function(use)
-- Packer can manage itself
use 'wbthomason/packer.nvim'

-- ===> ColorSchemes
use 'ellisonleao/gruvbox.nvim'
use 'folke/tokyonight.nvim'
use { 'catppuccin/nvim', as = 'catppuccin'}

-- ===> Completion
use 'neovim/nvim-lspconfig'

use {
    'windwp/nvim-autopairs',
    config = function() require('nvim-autopairs').setup {} end
}

-- ===> Beautify
use 'maksimr/vim-jsbeautify'

-- ===> Nerdtree
use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons',
    config = function() require'nvim-tree'.setup {} end
}

-- ===> StatusLine

-- ===> Colors
use {
    'norcalli/nvim-colorizer.lua',
    ft = { 'css', 'javascript', 'vim', 'html' },
    config = [[require('colorizer').setup {'css', 'javascript', 'vim', 'html'}]],
}

-- ===> Commenting
use {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end,
}

-- ===> Markdown Live Preview

-- install without yarn or npm
use({
    "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end,
})

use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })

-- ===> HTML/CSS/JS live preview (default browser)
use {
    'turbio/bracey.vim',
    run = 'npm instal --prefix server'
}

-- ===> Clipboard
-- use 'christoomey/vim-system-copy'

-- ===> surround
use 'tpope/vim-surround'

-- ===> Fuzzy Search

-- depends on the fzf package
use 'junegunn/fzf.vim'

-- ===> Alignment
use 'godlygeek/tabular'

-- ===> Previous Files
use 'yegappan/mru'

-- ===> Start Screen
use 'mhinz/vim-startify'

-- ===> Floterm
use 'voldikss/vim-floaterm'

-- ===> indentline
use 'Yggdroot/indentLine' 

-- ===> WhichKey
use {
  "folke/which-key.nvim",
  config = function()
    require("which-key").setup {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
  end
}

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
