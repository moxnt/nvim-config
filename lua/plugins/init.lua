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
  {
    "andweeb/presence.nvim",
    opts = {

      auto_update = true, -- Update activity based on autocmd events (if `false`, map or manually execute `:lua package.loaded.presence:update()`)
      neovim_image_text = "The One True Text Editor", -- Text displayed when hovered over the Neovim image
      main_image = "neovim", -- Main image display (either "neovim" or "file")
      client_id = "793271441293967371", -- Use your own Discord application client id (not recommended)
      log_level = nil, -- Log messages at or above this level (one of the following: "debug", "info", "warn", "error")
      debounce_timeout = 10, -- Number of seconds to debounce events (or calls to `:lua package.loaded.presence:update(<filename>, true)`)
      enable_line_number = false, -- Displays the current line number instead of the current project
      blacklist = {}, -- A list of strings or Lua patterns that disable Rich Presence if the current file name, path, or workspace matches
      buttons = true, -- Configure Rich Presence button(s), either a boolean to enable/disable, a static table (`{{ label = "<label>", url = "<url>" }, ...}`, or a function(buffer: string, repo_url: string|nil): table)
      file_assets = {}, -- Custom file asset definitions keyed by file names and extensions (see default config at `lua/presence/file_assets.lua` for reference)
      show_time = true, -- Show the timer

      -- Rich Presence text options
      editing_text = "Harassing %s", -- Format string rendered when an editable file is loaded in the buffer (either string or function(filename: string): string)
      file_explorer_text = "Browsing %s", -- Format string rendered when browsing a file explorer (either string or function(file_explorer_name: string): string)
      git_commit_text = "Jiggying it", -- Format string rendered when committing changes in git (either string or function(filename: string): string)
      plugin_manager_text = "Managing plugins", -- Format string rendered when managing plugins (either string or function(plugin_manager_name: string): string)
      reading_text = "Reading %s", -- Format string rendered when a read-only or unmodifiable file is loaded in the buffer (either string or function(filename: string): string)
      workspace_text = "Working on %s", -- Format string rendered when in a git repository (either string or function(project_name: string|nil, filename: string): string)
      line_number_text = "Line %s out of %s, good boy!", -- Format string rendered when `enable_line_number` is set to true (either string or function(line_number: number, line_count: number): string)
    },
    lazy = false,
  },
}
