return {
	"ThePrimeagen/harpoon",
	lazy = false,
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	config = function()
		require("harpoon").setup({
			menu = {
				width = vim.api.nvim_win_get_width(0) - 4,
			},
		})

		local mark = require("harpoon.mark")
		local ui = require("harpoon.ui")
		local keymap = vim.keymap.set

		keymap("n", "<leader>ha", mark.add_file, { desc = "Harpoon: Add file" })
		keymap("n", "<leader>hA", mark.rm_file, { desc = "Harpoon: Remove file" })
		keymap("n", "<leader>hh", ui.toggle_quick_menu, { desc = "Harpoon: Toggle menu" })
		keymap("n", "<leader>h1", function()
			ui.nav_file(1)
		end, { desc = "Harpoon: Navigate to file 1" })
		keymap("n", "<leader>h2", function()
			ui.nav_file(2)
		end, { desc = "Harpoon: Navigate to file 2" })
		keymap("n", "<leader>h3", function()
			ui.nav_file(3)
		end, { desc = "Harpoon: Navigate to file 3" })
		keymap("n", "<leader>h4", function()
			ui.nav_file(4)
		end, { desc = "Harpoon: Navigate to file 4" })
		keymap("n", "<leader>h5", function()
			ui.nav_file(5)
		end, { desc = "Harpoon: Navigate to file 5" })
		keymap("n", "<leader>h6", function()
			ui.nav_file(6)
		end, { desc = "Harpoon: Navigate to file 6" })
		keymap("n", "<leader>h7", function()
			ui.nav_file(7)
		end, { desc = "Harpoon: Navigate to file 7" })
		keymap("n", "<leader>h8", function()
			ui.nav_file(8)
		end, { desc = "Harpoon: Navigate to file 8" })
		keymap("n", "<leader>h9", function()
			ui.nav_file(9)
		end, { desc = "Harpoon: Navigate to file 9" })
		keymap("n", "<leader>h0", function()
			ui.nav_file(10)
		end, { desc = "Harpoon: Navigate to file 10" })
		keymap("n", "<leader>h<space>", ui.nav_next, { desc = "Harpoon: Navigate to next file" })
		keymap("n", "<leader>h<bs>", ui.nav_prev, { desc = "Harpoon: Navigate to previous file" })
	end,
}
