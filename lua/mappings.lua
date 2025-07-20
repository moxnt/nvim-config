require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("n", "<C-f>", "<C-f>zz")
map("n", "<C-b>", "<C-b>zz")
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
-- test comment
