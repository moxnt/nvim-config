-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		vim.api.nvim_echo({
			{ "Failed to clone lazy.nvim:\n", "ErrorMsg" },
			{ out, "WarningMsg" },
			{ "\nPress any key to exit..." },
		}, true, {})
		vim.fn.getchar()
		os.exit(1)
	end
end
vim.opt.rtp:prepend(lazypath)

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Setup lazy.nvim
require("lazy").setup({

	install = { colorscheme = { "nvchad" } },
	checker = { enabled = true },

	ui = {
		icons = {
			ft = "",
			lazy = "󰂠 ",
			loaded = "",
			not_loaded = "",
		},
	},

	spec = {
		{ import = "plugins" },
		{
			{
				"nvimtools/none-ls.nvim",
				lazy = false,
				dependencies = {
					"nvim-lua/plenary.nvim",
				},
				config = function()
					local null_ls = require "null-ls"

					null_ls.setup {
						sources = {
							null_ls.builtins.diagnostics.mypy,
						},
					}
				end,
			},
			{
				"mrcjkb/rustaceanvim",
				version = "^6", -- Recommended
				lazy = false, -- This plugin is already lazy
			},
			{
				{
					"iamcco/markdown-preview.nvim",
					cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
					build = "cd app && npm install",
					init = function()
						vim.g.mkdp_filetypes = { "markdown" }
					end,
					ft = { "markdown" },
				},
			},
		}
	}
})

