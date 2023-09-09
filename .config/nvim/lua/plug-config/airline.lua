vim.g.airline_powerline_fonts = 1
vim.g.airline_section_error = 0
vim.g.airline_section_warning = 0

vim.cmd [[
	let g:airline#extensions#tabline#enabled=1		
]]

vim.g.airline_symbols = { 
	colnr = " Co:", 
	maxlinenr = " ",
	linenr = " Ln:"
}
