vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- fuzzy-finder
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.2',
        requires = { { 'nvim-lua/plenary.nvim' }, { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' },
            { 'nvim-tree/nvim-web-devicons' } }
    }

    -- theme
    use 'AlexvZyl/nordic.nvim'

    -- treesitter
    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })

    -- harpoon
    use('theprimeagen/harpoon')

    -- fugitive
    use('tpope/vim-fugitive')

    use('lewis6991/gitsigns.nvim')

    use { "akinsho/toggleterm.nvim", tag = '*' }

    -- lsp-zero
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },             -- Required
            { 'williamboman/mason.nvim' },           -- Optional
            { 'williamboman/mason-lspconfig.nvim' }, -- Optional

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },     -- Required
            { 'hrsh7th/cmp-nvim-lsp' }, -- Required
            { 'L3MON4D3/LuaSnip' },     -- Required
        }
    }

    use { 'akinsho/git-conflict.nvim', tag = "*", config = function()
        require('git-conflict').setup()
    end }

    use {
        'jose-elias-alvarez/null-ls.nvim'
    }

    use {
        'folke/trouble.nvim',
        requires = {
            'nvim-tree/nvim-web-devicons'
        }
    }

    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }
end)
