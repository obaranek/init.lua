vim.cmd [[packadd packer.nvim]]
require('packer').startup(function()
    use { 'wbthomason/packer.nvim' }
    use { 'nvim-telescope/telescope.nvim', tag = '0.1.1', requires = { { 'nvim-lua/plenary.nvim' } } }
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    use { 'theprimeagen/harpoon' }
    use { 'mbbill/undotree' }
    use { 'tpope/vim-fugitive' }
    use { 'tpope/vim-commentary' }
    use { 'rose-pine/neovim', as = 'rose-pine' }
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/cmp-path' },
            { 'saadparwaiz1/cmp_luasnip' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'hrsh7th/cmp-nvim-lua' },

            -- Snippets
            { 'L3MON4D3/LuaSnip' },
            { 'rafamadriz/friendly-snippets' },
        }
    }
    use { 'sainnhe/gruvbox-material' }
    use { "github/copilot.vim" }
    use { 'nvim-lualine/lualine.nvim', requires = { 'kyazdani42/nvim-web-devicons' } }
    use {
        "nvim-neotest/neotest",
        requires = {
            "nvim-lua/plenary.nvim",
            "antoinemadec/FixCursorHold.nvim",
            "nvim-neotest/neotest-go",
        },
        config = function()
            -- get neotest namespace (api call creates or returns namespace)
            local neotest_ns = vim.api.nvim_create_namespace("neotest")
            vim.diagnostic.config({
                virtual_text = {
                    format = function(diagnostic)
                        local message =
                        diagnostic.message:gsub("\n", " "):gsub("\t", " "):gsub("%s+", " "):gsub("^%s+", "")
                        return message
                    end,
                },
            }, neotest_ns)
        end,
    }
    use { "nvim-neotest/nvim-nio" }
end)
