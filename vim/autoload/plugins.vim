function! plugins#load() abort
	call plugins#begin()

	Plug 'airblade/vim-gitgutter'
	Plug 'asheq/close-buffers.vim'
	Plug 'bkad/camelcasemotion'
	Plug 'christoomey/vim-tmux-navigator'
	Plug 'dense-analysis/ale'
	Plug 'easymotion/vim-easymotion'
	Plug 'editorconfig/editorconfig-vim'
	Plug 'github/copilot.vim'
	Plug 'honza/vim-snippets'
	Plug 'jeffkreeftmeijer/vim-dim'
	Plug 'jiangmiao/auto-pairs'
	Plug 'junegunn/fzf'
	Plug 'junegunn/fzf.vim'
	Plug 'justinmk/vim-sneak'
	Plug 'lervag/vimtex'
	Plug 'marcweber/vim-addon-local-vimrc'
	Plug 'mattn/emmet-vim'
	Plug 'mattn/vim-lsp-settings'
	Plug 'prabirshrestha/asyncomplete-buffer.vim'
	Plug 'prabirshrestha/asyncomplete-file.vim'
	Plug 'prabirshrestha/asyncomplete-lsp.vim'
	Plug 'prabirshrestha/asyncomplete-omni.vim'
	Plug 'prabirshrestha/asyncomplete-tags.vim'
	Plug 'prabirshrestha/asyncomplete-ultisnips.vim'
	Plug 'prabirshrestha/asyncomplete.vim'
	Plug 'prabirshrestha/vim-lsp'
	Plug 'rhysd/vim-lsp-ale'
	Plug 'rizzatti/dash.vim'
	Plug 'sheerun/vim-polyglot'
	Plug 'sirver/ultisnips'
	Plug 'thomasfaingnaert/vim-lsp-snippets'
	Plug 'thomasfaingnaert/vim-lsp-ultisnips'
	Plug 'tpope/vim-abolish'
	Plug 'tpope/vim-capslock'
	Plug 'tpope/vim-commentary'
	Plug 'tpope/vim-dispatch'
	Plug 'tpope/vim-endwise'
	Plug 'tpope/vim-eunuch'
	Plug 'tpope/vim-fugitive'
	Plug 'tpope/vim-obsession'
	Plug 'tpope/vim-repeat'
	Plug 'tpope/vim-rhubarb'
	Plug 'tpope/vim-scriptease'
	Plug 'tpope/vim-sensible'
	Plug 'tpope/vim-surround'
	Plug 'tpope/vim-unimpaired'
	Plug 'tpope/vim-vinegar'
	Plug 'vim-scripts/replacewithregister'
	Plug 'vimwiki/vimwiki'
	Plug 'yggdroot/indentline'

	call plugins#end()
endfunction

function! plugins#begin() abort
	let data_dir = '~/.vim'
	if empty(glob(data_dir . '/autoload/plug.vim'))
		silent execute '!curl -fLo ' . data_dir . '/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
		augroup plugins_install
			autocmd!
			autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
		augroup END
	endif

	call plug#begin(data_dir . '/plugged')
endfunction

function! plugins#end() abort
	call plug#end()
	let &runtimepath = '~/.vim,' . &runtimepath . ',~/.vim/after'
endfunction
