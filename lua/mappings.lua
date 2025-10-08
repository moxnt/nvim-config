require "nvchad.mappings"
-- add yours here
local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("n", "<C-f>", "<C-f>zz", { desc = "Go forward a page and center" })
map("n", "<C-b>", "<C-b>zz", { desc = "Go back a page and center" })
map("n", "<C-u>", "<C-u>zz", { desc = "Go up half a page and center" })
map("n", "<C-d>", "<C-d>zz", { desc = "Go down half a page and center" })
map("", "n", "h", { noremap = true, desc = "COLEMAK-DH hjkl home row remap - h" })
map("", "e", "j", { noremap = true, desc = "COLEMAK-DH hjkl home row remap - j" })
map("", "i", "k", { noremap = true, desc = "COLEMAK-DH hjkl home row remap - k" })
map("", "o", "l", { noremap = true, desc = "COLEMAK-DH hjkl home row remap - l" })
map("", "h", "n", { noremap = true, desc = "COLEMAK-DH hjkl - n" })
map("", "j", "e", { noremap = true, desc = "COLEMAK-DH hjkl - e" })
map("", "k", "i", { noremap = true, desc = "COLEMAK-DH hjkl - i" })
map("", "l", "o", { noremap = true, desc = "COLEMAK-DH hjkl - o" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
-- test comment
--
