-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'folke/tokyonight.nvim'
  use 'neovim/nvim-lspconfig'
  use 'dominikduda/vim_current_word'
  use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
  use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
  use 'hrsh7th/cmp-buffer'
  use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
  use 'L3MON4D3/LuaSnip' -- Snippets plugin
  use {'nvim-telescope/telescope.nvim', tag = '0.1.0'}
  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
  use 'nvim-lua/plenary.nvim'
  use 'nvim-treesitter/nvim-treesitter'
  use 'windwp/nvim-autopairs'
  use 'jose-elias-alvarez/null-ls.nvim'
  use {'nvim-lualine/lualine.nvim', requires = { 'kyazdani42/nvim-web-devicons', opt = true }}
  use 'MunifTanjim/prettier.nvim'
  use 'p00f/clangd_extensions.nvim'
end)
