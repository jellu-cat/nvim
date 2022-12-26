local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(
    function(use)

    -- Packer can manage itself
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
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,
    }

    -- ===> LSP

    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use {
        'hrsh7th/cmp-path',
        require('cmp').setup {
            sources = { name = 'path'}
        }
    }
    
    -- ===> Completion
    use {
        'windwp/nvim-autopairs',
        config = function()
            require('nvim-autopairs').setup {
            }
        end
    }

    use 'j-hui/fidget.nvim'
    use 'folke/neodev.nvim'

    use {
        'VonHeikemen/lsp-zero.nvim',

        requires = {

            -- LSP Support
            {'neovim/nvim-lspconfig'},
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},
        
            -- Autocompletion
            {'hrsh7th/cmp-buffer'},
            {'saadparwaiz1/cmp_luasnip'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'hrsh7th/cmp-nvim-lua'},
        
            -- Snippets
            {'L3MON4D3/LuaSnip'},
            {'rafamadriz/friendly-snippets'},
        }
    }

    -- ===> Navigation
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = {
            'nvim-lua/plenary.nvim'
        }
    }

    use {'theprimeagen/harpoon'}

    use {'mbbill/undotree'}

    -- ===> Beautify
    use 'maksimr/vim-jsbeautify'
    
    -- ===> Nerdtree
    use {
        'kyazdani42/nvim-tree.lua',
        requires = 'kyazdani42/nvim-web-devicons',
        config = function()
            require('nvim-tree').setup {
            }
        end
    }
    
    -- ===> StatusLine
    
    -- ===> Colorizers
    use {
    'ziontee113/color-picker.nvim',
    config = function()
        require("color-picker").setup{
        }
    end
    }

    -- ===> Commenting
    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup {
            }
        end,
    }
    
    -- ===> Markdown Live Preview
    -- install without yarn or npm
    use {
        'iamcco/markdown-preview.nvim',
        run = 'cd app && npm install',
        setup = function()
            vim.g.mkdp_filetypes = { "markdown" }
        end,
        ft = { "markdown" }
    }
    
    -- ===> HTML/CSS/JS live preview (default browser)
    use {
        'turbio/bracey.vim',
        run = 'npm instal --prefix server'
    }
    
    -- ===> Latex
    use {
        'vim-latex/vim-latex'
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
        'folke/which-key.nvim',
        config = function()
            require('which-key').setup {
                -- your configuration comes here
                -- or leave it empty to use the default settings
            }
        end
    }

    -- ===> Jupyter Integration
    use {
        'jupyter-vim/jupyter-vim',
        as = 'jupyter'
    }

    -- ===> Games
    use 'ThePrimeagen/vim-be-good'

      use 'nvim-lualine/lualine.nvim' -- Fancier statusline
  use 'lukas-reineke/indent-blankline.nvim' -- Add indentation guides even on blank lines
  use 'numToStr/Comment.nvim' -- "gc" to comment visual regions/lines
  use 'tpope/vim-sleuth' -- Detect tabstop and shiftwidth automatically

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end

end)
