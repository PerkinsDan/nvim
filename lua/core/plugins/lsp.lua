return {
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			"folke/lazydev.nvim",
			"williamboman/mason-lspconfig.nvim",
		},
		config = function()
			----------------------------------------------------------------------
			-- Register server configs using NEW API
			----------------------------------------------------------------------

			-- Pyright
			vim.lsp.config("pyright", {})

			-- Pylsp
			vim.lsp.config("pylsp", {
				settings = {
					pylsp = {
						plugins = {
							pyflakes = { enabled = false },
							pycodestyle = { enabled = false },
							autopep8 = { enabled = false },
							yapf = { enabled = false },
							black = { enabled = true },
						},
					},
				},
			})

			-- Enable both for their filetypes
			vim.lsp.enable("pyright")
			vim.lsp.enable("pylsp")

			-- Formatting keymap
			vim.keymap.set("n", "<leader>f", function()
				vim.lsp.buf.format({ async = true })
			end, { desc = "Format file" })
		end,
	},

	{
		"mason-org/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},

	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "pyright", "pylsp" },
				automatic_installation = true,
			})
		end,
	},
}
