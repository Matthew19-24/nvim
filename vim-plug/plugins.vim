call plug#begin('~/.config/nvim/autoload/plugged')

	Plug 'aklt/plantuml-syntax'
	Plug 'tyru/open-browser.vim'
	Plug 'weirongxu/plantuml-previewer.vim'
	Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }
	Plug 'dense-analysis/ale'

	call plug#end()
