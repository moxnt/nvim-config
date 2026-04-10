local map = vim.keymap.set

-- Mini QoL
map("n", ";", ":", { desc = "CMD enter command mode" })
map("n", "<C-f>", "<C-f>zz", { desc = "Go forward a page and center" })
map("n", "<C-b>", "<C-b>zz", { desc = "Go back a page and center" })
map("n", "<C-u>", "<C-u>zz", { desc = "Go up half a page and center" })
map("n", "<C-d>", "<C-d>zz", { desc = "Go down half a page and center" })

-- Movement binds for colemak-dh
map("", "n", "h", { noremap = true, desc = "n - go left" })
map("", "e", "j", { noremap = true, desc = "e - go down" })
map("", "i", "k", { noremap = true, desc = "i - go up" })
map("", "o", "l", { noremap = true, desc = "o - go right" })
map("", "h", "n", { noremap = true, desc = "h - next result" })
map("", "j", "e", { noremap = true, desc = "j - End of word" })
map("", "k", "i", { noremap = true, desc = "k - inside / insert" })
map("", "l", "o", { noremap = true, desc = "l - new line lower/under" })
map("", "l", "o", { noremap = true, desc = "l - new line lower/under" })

map("n", "gl", function()
  vim.diagnostic.open_float()
end, { desc = "Open diagnostic window" })

-- Think command
vim.api.nvim_create_user_command("Think", function()
  local time_string = os.date "%d-%m-%Y"
  vim.api.nvim_command(string.format("e ~/yapping/thoughts@%s.md", time_string))
end, {})

-- Buffers
vim.keymap.set("n", "<Tab>", function()
  require("bufferline").cycle(1)
end, { desc = "Buffer Next" })

vim.keymap.set("n", "<S-Tab>", function()
  require("bufferline").cycle(-1)
end, { desc = "Buffer Prev" })
