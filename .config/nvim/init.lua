require("config.lazy")

-- disable compatibility to old-time vi
vim.cmd "set nocompatible" 
-- highlight search
vim.opt.hlsearch = true                 
-- incremental search
vim.opt.incsearch = true	
-- number of columns occupied by a tab
vim.opt.tabstop = 4
-- see multiple spaces as tabstops so <BS> does the right thing
vim.opt.softtabstop = 4
-- width for autoindents
vim.opt.shiftwidth = 4 
-- indent a new line the same amount as the line just typed
vim.opt.autoindent = true 
-- add line numbers
vim.opt.number = true                 
-- get bash-like tab completions
vim.opt.wildmode = "longest,list"
-- allow auto-indenting depending on file type
vim.cmd "filetype plugin on" 
-- enable mouse click
vim.opt.mouse = 'a'
-- using system clipboard
vim.opt.clipboard = "unnamedplus"   vim.opt.filetype.plugin = "on"
-- Speed up scrolling in Vim
vim.ttyfast = true

-- font
vim.opt.guifont = "Hack:h11"
vim.opt.mouse = ""

vim.opt.cmdheight = 2
vim.opt.updatetime = 300
vim.opt.colorcolumn = '80'
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.hidden = true

vim.opt.shortmess:append("c")

vim.cmd [[
	autocmd TermOpen * setlocal nonumber norelativenumber
	autocmd TermOpen * startinsert
]] 

vim.opt.signcolumn = "number"
vim.opt.termguicolors = true

require("keybinds")
require("lualine").setup({
	options = {
		always_show_tabline = true,
	},
	sections = {
		lualine_a = { 'mode' },
		lualine_b = { 'branch', 'diff', 'diagnostics' },
		lualine_c = { 'filename', 'lsp_progress' },
		lualine_x = { 'encoding', 'fileformat', 'filetype' },
		lualine_y = { 'progress' },
		lualine_z = { 'location' },
	},
	tabline = {
		lualine_a = { 'buffers' },
		lualine_b = {},
		lualine_c = {},
		lualine_x = {},
		lualine_y = {},
		lualine_z = { 'tabs' },
	},
})
require("startify-conf")
require("lsp-setup")

-- Set color scheme
vim.g.everforest_background = "hard"
vim.cmd("colorscheme everforest")

vim.diagnostic.config({
	virtual_text = true,
})
