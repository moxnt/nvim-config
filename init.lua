vim.opt.clipboard = "unnamedplus"
vim.opt.termguicolors = true
vim.g.mapleader = " "

require "mappings"
require "options"
require "lazyinit"

vim.cmd.colorscheme [[dracula]]
