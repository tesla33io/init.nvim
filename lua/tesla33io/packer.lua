-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.5',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	-- Colorscheme KANAGAWA.nvim
	use ({
		"rebelot/kanagawa.nvim",
		as = "kanagawa",
		config = function()
			vim.cmd("colorscheme kanagawa")
		end
	})

	use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
	use('nvim-treesitter/playground')
	use('ThePrimeagen/harpoon')
	use('mbbill/undotree')
	use('tpope/vim-fugitive')
	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v3.x',
		requires = {
			--- Uncomment the two plugins below if you want to manage the language servers from neovim
			-- {'williamboman/mason.nvim'},
			-- {'williamboman/mason-lspconfig.nvim'},

			-- LSP Support
			{'neovim/nvim-lspconfig'},
			-- Autocompletion
			{'hrsh7th/nvim-cmp'},
			{'hrsh7th/cmp-nvim-lsp'},
			{'L3MON4D3/LuaSnip'},
		}
	}
	use {
		"williamboman/mason.nvim"
	}
	use {
		'glepnir/nerdicons.nvim',
		cmd = 'NerdIcons',
		config = function()
			require('nerdicons').setup({})
		end
	}

	-- 42 Header
	use { "Diogo-ss/42-header.nvim" }

	-- Comment highlightning
	-- use {
	-- 	'folke/todo-comments.nvim',
		-- config = function()
			-- your configuration comes here
			-- or leave it empty to use the default settings
			-- refer to the configuration section below
		-- end,
	-- 	dependencies = { 'nvim-lua/plenary.nvim' },
	-- }
	
	-- Rust
	use {
		'simrat39/rust-tools.nvim'
	}

	use {
		'nvim-focus/focus.nvim'
	}

end)

