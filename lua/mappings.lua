require "nvchad.mappings"
-- add yours here
local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("n", "<C-f>", "<C-f>zz", { desc = "Go forward a page and center" })
map("n", "<C-b>", "<C-b>zz", { desc = "Go back a page and center" })
map("n", "<C-u>", "<C-u>zz", { desc = "Go up half a page and center" })
map("n", "<C-d>", "<C-d>zz", { desc = "Go down half a page and center" })
map("", "n", "h", { noremap = true, desc = "n - go left" })
map("", "e", "j", { noremap = true, desc = "e - go down" })
map("", "i", "k", { noremap = true, desc = "i - go up" })
map("", "o", "l", { noremap = true, desc = "o - go right" })
map("", "h", "n", { noremap = true, desc = "h - next result" })
map("", "j", "e", { noremap = true, desc = "j - End of word" })
map("", "k", "i", { noremap = true, desc = "k - inside / insert" })
map("", "l", "o", { noremap = true, desc = "l - new line lower/under" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
-- test comment
--
