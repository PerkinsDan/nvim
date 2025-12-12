vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, { desc = "Open file explorer" })
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, { desc = "Format current buffer" })

vim.keymap.set("n", "<leader>ex", function()
	vim.cmd("tabnew ~/.config/nvim/")
end, { desc = "Open init.lua in new tab" })
vim.keymap.set("n", "<leader>ct", ":tabclose<CR>", { desc = "Close tab" })
