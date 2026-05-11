if vim.g.neovide then
  vim.o.guifont = "JetBrainsMono Nerd Font Mono:h16"
  vim.g.neovide_hide_mouse_when_typing = true
  vim.g.neovide_refresh_rate = 144
  vim.g.neovide_refresh_rate_idle = 30
  vim.g.neovide_cursor_vfx_mode = "pixiedust"
  vim.g.neovide_cursor_vfx_particle_density = 2
  vim.g.neovide_cursor_vfx_opacity = 400.0
  vim.g.neovide_fullscreen = false
  vim.g.neovide_remember_window_size = true
end

vim.o.ignorecase = true
vim.o.number = true
vim.o.signcolumn = "number"

vim.diagnostic.config {
  virtual_text = {
    prefix = "󰌶 ", -- Could be '■', '▎', '󰅚'
    spacing = 4,
  },

  signs = true,
  underline = true,
  severity_sort = true,
  update_in_insert = true,
}
