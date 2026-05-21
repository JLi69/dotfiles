vim.api.nvim_create_autocmd("FileType", {
	pattern = "java",
	callback = function()
		-- Have tabs be only 2 spaces
		vim.bo.shiftwidth = 4
		vim.bo.tabstop = 4
		vim.bo.expandtab = true
	end
})
