-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    -- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use({
    'rose-pine/neovim',
    as = 'rose-pine',
    config = function()
      vim.cmd('colorscheme rose-pine')
    end
  })
  use({
    'lunarvim/horizon.nvim',
    as = 'horizon',
    config = function()
      vim.cmd('colorscheme horizon')
    end
  })

  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }
  use ('nvim-treesitter/nvim-treesitter', {run =  ':TSUpdate'})
  use('nvim-treesitter/playground')
  use('theprimeagen/harpoon')
  use('mbbill/undotree')
  use('tpope/vim-fugitive')
  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v3.x',  -- Ensure you use the correct branch or version
    requires = {
      {'neovim/nvim-lspconfig'},              -- LSP Support
      {'williamboman/mason.nvim'},            -- LSP Installer
      {'williamboman/mason-lspconfig.nvim'},  -- LSP Configuration
      {'hrsh7th/nvim-cmp'},                   -- Autocompletion
      {'hrsh7th/cmp-nvim-lsp'},               -- LSP Completion
      {'L3MON4D3/LuaSnip'},                   -- Snippets
      {'saadparwaiz1/cmp_luasnip'},           -- Snippet completions
    }
  }
end)
