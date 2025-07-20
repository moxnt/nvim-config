local null_ls = require("null-ls")
local options = {
  sources = {
    null_ls.builtins.diagnostics.selene,
  },
}

return options
