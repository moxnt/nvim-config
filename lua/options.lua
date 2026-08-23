if vim.g.neovide then
  vim.o.guifont = "JetBrainsMono Nerd Font Mono:h18"
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
vim.o.cursorline = true
vim.o.helpheight = 36
vim.o.showmode = false
vim.o.winborder = "rounded"
vim.o.termguicolors = true

local diagnostic_severity_icons = {
  [vim.diagnostic.severity.ERROR] = "", -- f530
  [vim.diagnostic.severity.WARN] = "", -- f071
  [vim.diagnostic.severity.INFO] = "", -- f05a
  [vim.diagnostic.severity.HINT] = "", -- f400
}

--- @type vim.diagnostic.Opts
local opts = {
  float = {
    scope = "b",
    header = "LSP messages for this buffer:",
    source = "if_many",
  },
  jump = {},
  severity_sort = true,
  signs = {
    text = diagnostic_severity_icons,
  },
  status = {},
  underline = true,
  update_in_insert = true,
  virtual_lines = { current_line = true },
  virtual_text = {
    current_line = false,
    prefix = function(diagnostic)
      return string.format("%s ", diagnostic_severity_icons[diagnostic.severity])
    end,
  },
}

vim.diagnostic.config(opts)
