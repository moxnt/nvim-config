vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
vim.opt.clipboard = "unnamedplus"
vim.opt.termguicolors = true

require "options"
require "lazyinit"
require "mappings"

vim.cmd.colorscheme [[dracula]]
