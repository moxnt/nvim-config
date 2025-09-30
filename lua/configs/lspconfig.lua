-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local servers = { "cssls", "ts_ls", "tailwindcss", "eslint", "clangd", "html", "pylsp", "intelephense" }
vim.lsp.enable(servers)
