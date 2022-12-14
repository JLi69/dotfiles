set nocompatible            " disable compatibility to old-time vi  
set hlsearch                " highlight search 
set incsearch               " incremental search
set tabstop=4               " number of columns occupied by a tab 
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set wildmode=longest,list   " get bash-like tab completions
filetype plugin indent on   " allow auto-indenting depending on file type
"set mouse=a                 " enable mouse click
set clipboard=unnamedplus   " using system clipboard
filetype plugin on
set ttyfast                 " Speed up scrolling in Vim
set noexpandtab

" Set the default font size
set guifont=Hack:h11

call plug#begin("~/.config/nvim/autoload")
	Plug 'ryanoasis/vim-devicons' " Icons	
	Plug 'sainnhe/everforest'
	Plug 'neoclide/coc.nvim', { 'branch' : 'release' } " Intellisense
	Plug 'rust-lang/rust.vim'
	Plug 'scrooloose/nerdtree', {'on' : 'NERDTreeToggle'} " Nerdtree
	Plug 'mhinz/vim-startify' " cool start menu
	Plug 'beyondmarc/glsl.vim' " glsl syntax highlighting	
	Plug 'jackguo380/vim-lsp-cxx-highlight' " Intellisense Syntax highlighting	
	Plug 'vim-airline/vim-airline'
call plug#end()

" Plugin configs
so $HOME/.config/nvim/plug-config/airline.vim
so $HOME/.config/nvim/plug-config/nerdtree.vim
so $HOME/.config/nvim/plug-config/startify.vim
so $HOME/.config/nvim/plug-config/glsl.vim

autocmd TermOpen * setlocal nonumber norelativenumber
autocmd TermOpen * startinsert

" Keybindings
so $HOME/.config/nvim/keybinds.vim

" Set up the syntax colors and theme
if(has("termguicolors"))
	set termguicolors
endif
" enable the colorscheme
syntax enable
"colorscheme codedark
let g:everforest_background='hard'
colorscheme everforest 

" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("nvim-0.5.0") || has("patch-8.1.1564")
	" Recently vim can merge signcolumn and number column into one
	set signcolumn=number
else
	set signcolumn=yes
endif

" c++ syntax highlighting
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:lsp_cxx_hl_use_text_props = 1
