return {
	"neovim/nvim-lspconfig",
	config = function()
		local servers = {
			"cssls",
			"ts_ls",
			"tailwindcss",
			"eslint",
			"clangd",
			"html",
			"pylsp",
			"intelephense",
			"laravel_ls",
			"tinymist"
		}

		vim.lsp.enable(servers)
	end,
}
