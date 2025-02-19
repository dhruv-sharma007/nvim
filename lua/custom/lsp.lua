local lspconfig = require("lspconfig")
local mason = require("mason")
local mason_lspconfig = require("mason-lspconfig")

mason.setup()
mason_lspconfig.setup({
  ensure_installed = {
    "ts_ls",   -- TypeScript & JavaScript
    "html",       -- HTML
    "cssls",      -- CSS
    "jsonls",     -- JSON
    "eslint",     -- ESLint
    "lua_ls",     -- Lua
    "pyright",    -- Python
    "bashls",     -- Bash
    "dockerls",   -- Docker
    "yamlls",     -- YAML
    "marksman",   -- Markdown
  },
})

local on_attach = function(client, bufnr)
  -- Enable keybindings for LSP
end

for _, server in ipairs(mason_lspconfig.get_installed_servers()) do
  lspconfig[server].setup({
    on_attach = on_attach,
  })
end

