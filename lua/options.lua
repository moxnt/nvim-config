require "nvchad.options"

-- add yours here!

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!
--
if vim.g.neovide then
  vim.o.guifont = "JetBrainsMono Nerd Font Propo:h16"
  vim.g.neovide_hide_mouse_when_typing = true
  vim.g.neovide_refresh_rate = 120
  vim.g.neovide_refresh_rate_idle = 30
  vim.g.neovide_fullscreen = true
  vim.g.neovide_cursor_vfx_mode = "pixiedust"
  vim.g.neovide_cursor_vfx_particle_density = 2
  vim.g.neovide_cursor_vfx_opacity = 400.0
end
