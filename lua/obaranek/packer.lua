vim.cmd [[packadd packer.nvim]]
require('packer').startup(function()
  use {'wbthomason/packer.nvim'}
  use {'nvim-telescope/telescope.nvim', tag = '0.1.1', requires = { {'nvim-lua/plenary.nvim'} }}
  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
  use { 'theprimeagen/harpoon' }
  use { 'mbbill/undotree' }
  use { 'tpope/vim-fugitive' }
  use {'tpope/vim-commentary'}
  use { 'rose-pine/neovim', as = 'rose-pine' }
  -- use {'tpope/vim-sensible'}
  use {'VonHeikemen/lsp-zero.nvim', branch = 'v1.x', requires = {
    {'neovim/nvim-lspconfig'},
  	{'williamboman/mason.nvim'},
  	{'williamboman/mason-lspconfig.nvim'},
  -- Autocompletion
	{'hrsh7th/nvim-cmp'},
	{'hrsh7th/cmp-buffer'},
  	{'hrsh7th/cmp-path'},
	{'saadparwaiz1/cmp_luasnip'},
	{'hrsh7th/cmp-nvim-lsp'},
	{'hrsh7th/cmp-nvim-lua'},
	-- Snippets
	{'L3MON4D3/LuaSnip'},
	{'rafamadriz/friendly-snippets'},}}
  use { 'ellisonleao/gruvbox.nvim' }
  use { "github/copilot.vim" }

  use {
  'chipsenkbeil/distant.nvim',
  config = function()
    require('distant').setup {
      -- Applies Chip's personal settings to every machine you connect to
      --
      -- 1. Ensures that distant servers terminate with no connections
      -- 2. Provides navigation bindings for remote directories
      -- 3. Provides keybinding to jump into a remote file's parent directory
      ['*'] = require('distant.settings').chip_default()
    }
  end
}
end)
