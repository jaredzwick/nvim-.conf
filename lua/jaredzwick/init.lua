require("jaredzwick.remap")
return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	use { "catppuccin/nvim", as = "catppuccin" }
	use "nvim-lua/plenary.nvim"
	use {
	    "ThePrimeagen/harpoon",
	    branch = "harpoon2",
	    requires = { {"nvim-lua/plenary.nvim"} }
	}
	use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.8',
	  requires = { {'nvim-lua/plenary.nvim'} }
	}
	use({
		"nvim-treesitter/nvim-treesitter", 
		{run = ":TSUpdate" }
	})

	use "williamboman/mason.nvim"
	use "williamboman/mason-lspconfig.nvim"
	use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v3.x',
	  requires = {
  	    {'williamboman/mason.nvim'},
    	    {'williamboman/mason-lspconfig.nvim'},
	    {'neovim/nvim-lspconfig'},
	    {'hrsh7th/nvim-cmp'},
	    {'hrsh7th/cmp-nvim-lsp'},
	    {'L3MON4D3/LuaSnip'},
	  }
	}
end)

