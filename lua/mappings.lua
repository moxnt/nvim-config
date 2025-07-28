require "nvchad.mappings"

vim = _G.vim

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("n", "<C-f>", "<C-f>zz", { desc = "Go forward a page and center" })
map("n", "<C-b>", "<C-b>zz", { desc = "Go back a page and center" })
map("n", "<C-u>", "<C-u>zz", { desc = "Go up half a page and center" })
map("n", "<C-d>", "<C-d>zz", { desc = "Go down half a page and center" })
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
-- test comment
--
