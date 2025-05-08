local o = vim.opt

o.number = true -- Print the line number in front of each line
o.relativenumber = true -- Show the line number relative to the line with the cursor in front of each line.

o.shiftwidth = 4 -- Number of spaces to use for each step of (auto)indent.
o.tabstop = 4 -- Number of spaces that a <Tab> in the file counts for.

o.clipboard = "unnamedplus" -- uses the clipboard register for all operations except yank.

o.syntax = "on" -- When this option is set, the syntax with this name is loaded.

o.termguicolors = true

-- Diagnostics Configuration LSP
vim.diagnostic.config({
	virtual_text = true, -- show text inline
	signs = true, -- show signs in the sign column
	underline = true, -- underline the affected word
	update_in_insert = false,
	severity_sort = true,
})
