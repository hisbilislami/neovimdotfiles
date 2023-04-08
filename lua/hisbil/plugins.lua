local status, packer = pcall(require, "packer")
if (not status) then
  print("packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  use {
    'svrana/neosolarized.nvim',
    requires = { 'tjdevries/colorbuddy.nvim' }
  }
  use 'nvim-lualine/lualine.nvim' -- Statusline
  use 'nvim-lua/plenary.nvim'     -- Common utilities
  use 'kdheepak/tabline.nvim'
  use 'kyazdani42/nvim-web-devicons'

  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'

  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'
  use({
    "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end,
  })

  use 'neovim/nvim-lspconfig' -- LSP
  use 'hrsh7th/nvim-cmp'      -- Completion
  use 'onsails/lspkind-nvim'  -- vscode-like pictograms
  use 'hrsh7th/cmp-buffer'    -- nvim-cmp source for buffer words
  use 'hrsh7th/cmp-nvim-lsp'  -- nvim-cmp source for neovim's built-in LSP
  use 'glepnir/lspsaga.nvim'  -- LSP UIs
  use 'L3MON4D3/LuaSnip'
  use "rafamadriz/friendly-snippets"
  use 'saadparwaiz1/cmp_luasnip'
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'
  use 'jose-elias-alvarez/null-ls.nvim' -- Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua
  use 'MunifTanjim/prettier.nvim'       -- Prettier plugin for Neovim's built-in LSP client

  use {
    'numToStr/Comment.nvim',
    requires = {
      'JoosepAlviste/nvim-ts-context-commentstring'
    },
    tag = 'v0.6'
  }

  use 'tpope/vim-unimpaired'

  use 'lewis6991/gitsigns.nvim'
  use 'dinhhuy258/git.nvim' -- For git blame & browse

  use 'tpope/vim-fugitive'
end)
