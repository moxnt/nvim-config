return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre",
    config = function()
      require("conform").formatters.prettier = {
        prepend_args = { "--plugin=prettier-plugin-tailwindcss" },
      }

      require("conform").setup {
        formatters_by_ft = {
          lua = { "stylua" },
          css = { "prettier" },
          html = { "prettier" },
          javasript = { "prettier" },
          jsx = { "prettier" },
          typescript = { "prettier" },
          c = { "clang-format" },
          rust = { "rustfmt", lsp_format = "fallback" },
        },

        ---[[
        format_on_save = {
          -- These options will be passed to conform.format()
          timeout_ms = 1000,
          lsp_fallback = true,
        },
      }

      --]]
    end,

    cmd = { "ConformInfo" },
    dependencies = {
      { "neovim/nvim-lspconfig" },
      { "nvim-lua/plenary.nvim" },
      { "williamboman/mason.nvim" },
    },
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
        "javascript",
        "typescript",
      },
    },
  },

  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "intelephense",
        "css-lsp",
        "html-lsp",
        "lua-language-server",
        "prettier",
        "stylua",
        "selene",
        "typescript-language-server",
        "python-lsp-server",
        "tailwindcss-language-server",
        "eslint-lsp",
        "clangd",
        "clang-format",
        "rust-analyzer",
        "pretty-php",
      },
    },
  },

  {
    "nvimtools/none-ls.nvim",
    lazy = false,
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    config = function()
      local null_ls = require "null-ls"

      null_ls.setup {
        sources = {
          null_ls.builtins.diagnostics.selene,
          null_ls.builtins.formatting.pretty_php,
        },
      }
    end,
  },
  {
    "rust-lang/rust.vim",
    ft = "rust",
    init = function()
      vim.g.rustfmt_autosave = 1
    end,
  },
  {
    "mrcjkb/rustaceanvim",
    version = "^6", -- Recommended
    lazy = false, -- This plugin is already lazy
  },
}
