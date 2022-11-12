let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1
let g:airline_section_error=0
let airline_section_warning=0

if(!exists('g:airline_symbols'))
	let g:airline_symbols = {}
endif

let g:airline_symbols.colnr=' Co:'
let g:airline_symbols.maxlinenr = ' '
let g:airline_symbols.linenr=' Ln:'
