return {
  -- Conform.nvim (Formatter)
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- LSP Config
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  -- nvim-cmp (Autocomplete)
  {
    "hrsh7th/nvim-cmp",
    opts = function()
      local cmp = require "cmp"
      return {
        sources = cmp.config.sources({
          { name = "nvim_lsp" },
          { name = "luasnip" },
          { name = "buffer" },
          { name = "nvim_lua" },
          { name = "path" },
          { name = "tailwindcss" }, -- ✅ Tailwind CSS Autocomplete
        }),
      }
    end,
  },

  -- Treesitter (Syntax Highlighting)
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim", "lua", "vimdoc",
        "html", "css", "javascript", "tsx", "typescript", "json"
      },
    },
  },
}
