local status, packer = pcall(require, "packer")
if (not status) then
  print("packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'craftzdog/solarized-osaka.nvim'
  use 'nvim-lualine/lualine.nvim' -- Statusline
  use 'nvim-lua/plenary.nvim'     -- Common utilities
  use 'kdheepak/tabline.nvim'
  use 'nvim-tree/nvim-web-devicons'
  -- use 'norcalli/nvim-colorizer.lua'
  use("catgoose/nvim-colorizer.lua")

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
  use 'nvimdev/lspsaga.nvim'  -- LSP UIs
  -- use 'L3MON4D3/LuaSnip'
  use {
    "L3MON4D3/LuaSnip",
    tag = "v2.*",
    run = "make install_jsregexp"
  }
  use "rafamadriz/friendly-snippets"
  use 'saadparwaiz1/cmp_luasnip'
  use "mason-org/mason.nvim"
  use 'mason-org/mason-lspconfig.nvim'
  use 'nvimtools/none-ls.nvim' -- Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua
  -- use 'MunifTanjim/prettier.nvim' -- Prettier plugin for Neovim's built-in LSP client

  use {
    'numToStr/Comment.nvim',
    requires = {
      'JoosepAlviste/nvim-ts-context-commentstring'
    },
    tag = 'v0.6'
  }

  use 'tpope/vim-unimpaired'

  use 'lewis6991/gitsigns.nvim'
  use 'dinhhuy258/git.nvim'              -- For git blame & browse

  use 'mustache/vim-mustache-handlebars' -- for handlebars

  use 'tpope/vim-fugitive'

  use "rebelot/kanagawa.nvim"
  use "morhetz/gruvbox"
end)
