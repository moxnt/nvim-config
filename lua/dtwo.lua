-- get the parser in treesitter
vim.api.nvim_create_autocmd("User", {
  pattern = "TSUpdate",
  callback = function()
    require("nvim-treesitter.parsers").d2 = {
      install_info = {
        url = "https://github.com/ravsii/tree-sitter-d2",
        files = { "src/parser.c" },
        branch = "main",
      },
    }
  end,
})

-- d2 filetype, comments
vim.filetype.add {
  extension = {
    d2 = function()
      return "d2", function(bufnr)
        vim.bo[bufnr].commentstring = "# %s"
      end
    end,
  },
}

-- d2 fmt is the formatter that ships with the d2 diagramming language
vim.api.nvim_create_autocmd("BufWritePost", {
  pattern = "*.d2",
  callback = function()
    local file = vim.fn.expand "%:p"
    vim.fn.jobstart({ "d2", "fmt", file }, {
      on_exit = function(_, code)
        if code == 0 then
          vim.schedule(function()
            vim.cmd "edit" -- reload after fmt
          end)
        else
          vim.notify("d2 fmt failed", vim.log.levels.ERROR)
        end
      end,
    })
  end,
})

-- starts treesitter
vim.api.nvim_create_autocmd("BufEnter", {
  pattern = "*.d2",
  callback = function()
    vim.treesitter.start()
  end,
})
