return {
  "mfussnegger/nvim-lint",
  url = "git@github.com:mfussenegger/nvim-lint.git",
  config = function()
    local lint = require "lint"

    lint.linters_by_ft = {
      python = { "mypy" },
    }

    lint.linters.mypy.args = function()
      local venv_env = os.getenv "VIRTUAL_ENV"
      local python = venv_env and (venv_env .. "/bin/python") or vim.fn.exepath "python3"
      return {
        "--strict",
        "--show-column-numbers",
        "--show-error-end",
        "--python-executable",
        python,
      }
    end

    vim.api.nvim_create_autocmd({ "BufWritePost" }, {
      callback = function()
        lint.try_lint()
      end,
    })
  end,
}
