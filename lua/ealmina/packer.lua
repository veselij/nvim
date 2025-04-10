-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
        use("wbthomason/packer.nvim")
        use("ayu-theme/ayu-vim")
        use("dominikduda/vim_current_word")
        use("windwp/nvim-autopairs")
end)
