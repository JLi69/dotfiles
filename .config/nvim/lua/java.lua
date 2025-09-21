vim.api.nvim_create_autocmd("FileType", {
	pattern = "java",
	callback = function()
		-- Have tabs be only 2 spaces
		vim.bo.shiftwidth = 2
		vim.bo.tabstop = 2
		vim.bo.expandtab = true
	end
})
