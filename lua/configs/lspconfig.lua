-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

-- EXAMPLE
local servers = { "cssls", "lua_ls", "ts_ls", "tailwindcss", "eslint", "clangd", "rust_analyzer", "html", "pylsp" }
-- lsps with default config
vim.lsp.enable(servers)
