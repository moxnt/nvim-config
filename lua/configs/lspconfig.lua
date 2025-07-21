-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local servers = { "cssls", "ts_ls", "tailwindcss", "eslint", "clangd", "rust_analyzer", "html", "pylsp" }
vim.lsp.enable(servers)
