vim.cmd [[
	function! StartifyEntryFormat()	
		return 'entry_path'	
	endfunction
	
	let g:startify_custom_header = [		
				\ '	███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗',
				\ '	████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║',
				\ '	██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║',
				\ '	██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║',
				\ '	██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║',
				\ '	╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝',
	        	\ ]
	
	let g:startify_bookmarks = [
				\ '~/.config/nvim/init.vim',			
				\ '~/.config/alacritty/alacritty.yml',
				\ '~/.config/awesome/rc.lua'		
				\ ]
	
	" Configure the startify start menu
	let g:startify_lists = [
		\ { 'header' : ['	Recent'], 'type' : 'files' },
		\ { 'header' : ['	Sessions'], 'type' : 'sessions' },
		\ { 'header' : ['	Bookmarks'], 'type' : 'bookmarks' }
		\ ]
	let g:startify_fortune_use_unicode = 1
]]
