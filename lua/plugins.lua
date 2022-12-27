------------------------------------------------
--  ____            _
-- |  _ \ __ _  ___| | ____ _  __ _  ___  ___ 
-- | |_) / _` |/ __| |/ / _` |/ _` |/ _ \/ __|
-- |  __/ (_| | (__|   < (_| | (_| |  __/\__ \
-- |_|   \__,_|\___|_|\_\__,_|\__, |\___||___/
--                            |___/
------------------------------------------------

local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
    PACKER_BOOTSTRAP = fn.system {
        "git",
        "clone",
        "--depth",
        "1",
        "https://github.com/wbthomason/packer.nvim",
        install_path,
    }
    print "Installing packer; close and reopen Neovim..."
    vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
    augroup packer_user_config
        autocmd!
        autocmd BufWritePost plugins.lua source <afile> | PackerSync
    augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
    return
end

-- Have packer use a popup window
packer.init {
    display = {
        open_fn = function()
        return require("packer.util").float { border = "rounded" }
    end,
    },
}

return require('packer').startup(
    function(use)

    -- ====>Packer
        use 'wbthomason/packer.nvim'

    -- ===> ColorSchemes
        use 'ellisonleao/gruvbox.nvim'
        use 'folke/tokyonight.nvim'
        use 'savq/melange'

        use {
            'catppuccin/nvim',
            as = 'catppuccin'
        }

        use {
            "mcchrish/zenbones.nvim",
            requires = "rktjmp/lush.nvim"
        }

        use {
            'rose-pine/neovim',
            as = 'rose-pine',
            tag = 'v1.*',
            config = function()
            end
        }

    -- ===> Treesitter

        use {
            'nvim-treesitter/nvim-treesitter',
            run = function()
                local ts_update = require('nvim-treesitter.install').update({
                    with_sync = true
                })
                ts_update()
            end,
        }

    -- ==== LSP-Zero
        use {
            'VonHeikemen/lsp-zero.nvim',
            requires = {
                {'neovim/nvim-lspconfig'},
                {'williamboman/mason.nvim'},
                {'williamboman/mason-lspconfig.nvim'},
            }
        }

    -- ===> LSP
        use 'folke/neodev.nvim'
        use 'j-hui/fidget.nvim'
        use 'folke/trouble.nvim'

    -- ==== Completion Engines
        use 'hrsh7th/nvim-cmp'
        use 'hrsh7th/cmp-path'
        use 'hrsh7th/cmp-buffer'
        use 'hrsh7th/cmp-cmdline'
        use 'saadparwaiz1/cmp_luasnip'
        use 'hrsh7th/cmp-nvim-lsp'
        use 'hrsh7th/cmp-nvim-lua'

    -- ==== Snippets Engines
        use 'L3MON4D3/LuaSnip'
        use 'rafamadriz/friendly-snippets'

    -- ===> Autopair & Surround
        use 'windwp/nvim-autopairs'
        use 'tpope/vim-surround'

    -- ===> Commenting
        use 'numToStr/Comment.nvim'

    -- ====> Saving Folds & Cursor Position
        use 'vim-scripts/restore_view.vim'

    -- ====> Tabulation
        use 'godlygeek/tabular'
        use 'Yggdroot/indentLine'
        use 'lukas-reineke/indent-blankline.nvim'

    -- ===> Navigation
        use {
            'nvim-telescope/telescope.nvim', tag = '0.1.0',
            requires = {
                'nvim-lua/plenary.nvim'
            }
        }

        use 'theprimeagen/harpoon'
        use 'mbbill/undotree'
        use 'junegunn/fzf.vim'

    -- ===> Nerdtree
        use {
            'kyazdani42/nvim-tree.lua',
            requires = 'kyazdani42/nvim-web-devicons',
        }

    -- ===> StatusLine
        use 'nvim-lualine/lualine.nvim'

    -- ===> Colorizers
        use 'ziontee113/color-picker.nvim'

    -- ===> Start Screen
    use 'mhinz/vim-startify'
    use 'yegappan/mru'

    -- ===> Floterm
    use 'voldikss/vim-floaterm'

    -- ===> WhichKey
    use 'folke/which-key.nvim'

    -- ===> Games
    use 'ThePrimeagen/vim-be-good'

    -- -- ===> Latex
    -- use {'vim-latex/vim-latex'}

    -- -- ===> Clipboard
    --     use 'christoomey/vim-system-copy'

    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if packer_bootstrap then
        require('packer').sync()
    end

end)
