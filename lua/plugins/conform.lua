return {
  "stevearc/conform.nvim",
  event = "BufWritePre",
  opts = {
    formatters_by_ft = {
      c = { "clang-format" },
      css = { "prettier" },
      htmldjango = { "prettier" },
      html = { "prettier" },
      javascript = { "prettier" },
      javascriptreact = { "prettier" },
      lua = { "stylua" },
      php = { "php_cs_fixer" },
      python = { "ruff_format", "ruff_organize_imports" },
      rust = { "rustfmt", lsp_format = "fallback" },
      typescript = { "prettier" },
      typescriptreact = { "prettier" },
    },
    ---[[
    format_on_save = {
      -- These options will be passed to conform.format()
      timeout_ms = 500,
      lsp_fallback = false,
    },
  },

  --]]
  cmd = { "ConformInfo" },
  dependencies = {
    { "neovim/nvim-lspconfig" },
    { "nvim-lua/plenary.nvim" },
    { "williamboman/mason.nvim" },
  },
}
