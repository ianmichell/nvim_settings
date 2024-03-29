vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use('wbthomason/packer.nvim')
    -- All my plugins
    use('tpope/vim-fugitive')
    use('tpope/vim-rhubarb')
    use('tpope/vim-sleuth')
    use('tiagovla/tokyodark.nvim')
    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    use('nvim-treesitter/playground')
    use('ThePrimeagen/harpoon')
    use('mbbill/undotree')
    
    use {
        "klen/nvim-test",
        config = function()
        end
    }

    use({
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    })

    use {
        'nvim-telescope/telescope-fzf-native.nvim',
        run = 'make'
    }

    -- Zero LSP
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {'williamboman/mason.nvim'},           -- Optional
            {'williamboman/mason-lspconfig.nvim'}, -- Optional

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},         -- Required
            {'hrsh7th/cmp-nvim-lsp'},     -- Required
            {'hrsh7th/cmp-buffer'},       -- Optional
            {'hrsh7th/cmp-path'},         -- Optional
            {'saadparwaiz1/cmp_luasnip'}, -- Optional
            {'hrsh7th/cmp-nvim-lua'},     -- Optional

            -- Snippets
            {'L3MON4D3/LuaSnip'},             -- Required
            {'rafamadriz/friendly-snippets'}, -- Optional
        }
    }

    use('folke/which-key.nvim')
    use {
        'lewis6991/gitsigns.nvim',
        config = {
            signs = {
                add = { text = "+" },
                change = { text = "~" },
                delete = { text = "_" },
                topdelete = { text = "‾" },
                changedelete = { text = "~" },
            }
        }
    }

    use {
        'nvim-lualine/lualine.nvim',
        config = {
            options = {
                icons_enabled = false,
                theme = 'tokyodark',
                component_separators = '|',
                section_separators = '',
            }
        }
    }

    use {
        'lukas-reineke/indent-blankline.nvim',
        config = {
            char = '┊',
            show_trailing_blankline_indent = false,
        }
    }

    -- visual commenting --
    use('numToStr/Comment.nvim')

    use {
        'nvim-neo-tree/neo-tree.nvim',
        version = 'v2.x',
        requires = {
            'nvim-lua/plenary.nvim',
            'nvim-tree/nvim-web-devicons',
            'MunifTanjim/nui.nvim'
        }
    }

    -- Scala plugin, not sure I want this yet  --
    use({'scalameta/nvim-metals', requires = { "nvim-lua/plenary.nvim" }})

    -- Debugging --
    use('mfussenegger/nvim-dap')
end)
