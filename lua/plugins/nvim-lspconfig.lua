return {
  "neovim/nvim-lspconfig",
  config = function()
    vim.lsp.config("basedpyright", {
      settings = {
        basedpyright = {
          disableOrganizeImports = true,
          analysis = {
            typeCheckingMode = "off",
            ignore = { "*" }, -- mypy owns type diagnostics
            pythonPath = ".venv/bin/python",
            autoSearchPaths = true,
          },
        },
      },
    })

    vim.lsp.config("ruff", {
      on_attach = function(client)
        client.server_capabilities.hoverProvider = false
      end,
    })

    local servers = {
      -- web
      "cssls",
      "ts_ls",
      "tailwindcss",
      "eslint",
      "html",
      -- python
      "basedpyright",
      "ruff",
      -- c/c++
      "clangd",
      -- php
      "intelephense",
      "laravel_ls",
      -- typst
      "tinymist",
    }

    vim.lsp.enable(servers)
  end,
}
