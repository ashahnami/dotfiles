-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use ({ 
	  "catppuccin/nvim",
	  as = "catppuccin"
--	  config = function()
--		  vim.cmd('colorscheme catppuccin-macchiato')
--	  end
  })

  use ({"rebelot/kanagawa.nvim",
	  config = function()
		  vim.cmd('colorscheme kanagawa-dragon')
	  end
  })

  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

  use {
      'nvim-telescope/telescope.nvim', tag = '0.1.3',
      -- or                            , branch = '0.1.x',
      requires = { {'nvim-lua/plenary.nvim'} }
  }

  use 'lervag/vimtex'

  use {
      'nvim-lualine/lualine.nvim',
      requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }
end)
