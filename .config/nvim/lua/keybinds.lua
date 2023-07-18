function map(mode, lhs, rhs, opts)
	local options = { noremap = true }
	if opts then
		options = vim.tbl_extend("force", options, opts)
	end
	vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- create terminal
map("n", "<C-X>", ":split<CR>:terminal<CR>")
-- Create new tab
map("n", "<C-T>", ":tabnew<CR>")
-- Delete buffer
map("n", "<A-w>", ":bd<CR>")
-- next/previous buffer
map("n", "<C-A>", ":bprev<CR>")
map("n", "<C-D>", ":bnext<CR>")
-- CTRL + S to save file
map("n", "<C-S>", ":w<CR>")

-- Remap window switching keys to something more convenient
map("n", "<A-H>", "<C-W>h")
map("n", "<A-J>", "<C-W>j")
map("n", "<A-K>", "<C-W>k")
map("n", "<A-L>", "<C-W>l")

map("t", "<A-H>", "<C-\\><C-N><C-w>h")
map("t", "<A-J>", "<C-\\><C-N><C-w>j")
map("t", "<A-K>", "<C-\\><C-N><C-w>k")
map("t", "<A-L>", "<C-\\><C-N><C-w>l")

-- Remap resizing to be something more convenient
map("n", "<C-h>", ":vertical resize -2<CR>")
map("n", "<C-l>", ":vertical resize +2<CR>")
map("n", "<C-A-J>", ":res +1<CR>")
map("n", "<C-A-K>", ":res -1<CR>")
