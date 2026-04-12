return {
	"stevearc/conform.nvim",
	event = "BufWritePre",
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			css = { "prettier" },
			html = { "prettier" },
			javasript = { "prettier" },
			jsx = { "prettier" },
			typescript = { "prettier" },
			typescriptreact = { "prettier" },
			php = { "php_cs_fixer" },
			c = { "clang-format" },
			rust = { "rustfmt", lsp_format = "fallback" },
		},
		---[[
		format_on_save = {
			-- These options will be passed to conform.format()
			timeout_ms = 3000,
			lsp_fallback = true,
		},
	},

	--]]
	cmd = { "ConformInfo" },
	dependencies = {
		{ "neovim/nvim-lspconfig" },
		{ "nvim-lua/plenary.nvim" },
		{ "williamboman/mason.nvim" },
	},
}
