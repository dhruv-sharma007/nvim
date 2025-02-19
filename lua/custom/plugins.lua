local plugins = {
  -- Auto-completion
  { "hrsh7th/nvim-cmp" },
  { "hrsh7th/cmp-nvim-lsp" },
  { "hrsh7th/cmp-buffer" },
  { "hrsh7th/cmp-path" },
  { "saadparwaiz1/cmp_luasnip" },

  -- Snippets
  { "L3MON4D3/LuaSnip" },

  -- Treesitter (Syntax Highlighting)
  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },

  -- LSP Configuration
  { "neovim/nvim-lspconfig" },
  { "williamboman/mason.nvim" },
  { "williamboman/mason-lspconfig.nvim" },

  -- Debugging
  { "mfussenegger/nvim-dap" },
  { "rcarriga/nvim-dap-ui" },

  -- Formatter & Linter
  { "jose-elias-alvarez/null-ls.nvim" },

  -- File Explorer
  { "nvim-tree/nvim-tree.lua" },

  -- Telescope (Fuzzy Finder)
  { "nvim-telescope/telescope.nvim" },

  -- Git Integration
  { "lewis6991/gitsigns.nvim" },
  {
      "neovim/nvim-lspconfig",
       config = function()
        require("lspconfig").tailwindcss.setup({})
    end
  },

  -- Add Tailwind CSS color highlighting
  {
    "NvChad/nvim-colorizer.lua",
    opts = { user_default_options = { tailwind = true } }
  },

}
return plugins

