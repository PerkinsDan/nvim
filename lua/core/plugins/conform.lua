return {
	"stevearc/conform.nvim",
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				lua = { "stylua" },
				javascript = { "prettier" },
				javascriptreact = { "prettier" },
				typescript = { "prettier" },
				typescriptreact = { "prettier" },
				json = { "jq" },
				yaml = { "yamlfix" },
			},
			format_on_save = {
				lsp_format = "fallback",
			},
		})
	end,
}
