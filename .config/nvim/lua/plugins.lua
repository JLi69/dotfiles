vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	use 'sainnhe/everforest'
	use 'vim-airline/vim-airline'
	use 'beyondmarc/glsl.vim'
	use 'mhinz/vim-startify'
	use 'ryanoasis/vim-devicons'
	use 'scrooloose/nerdtree'
	use { 'neoclide/coc.nvim', branch = 'release' }
	use 'jackguo380/vim-lsp-cxx-highlight'
end)
