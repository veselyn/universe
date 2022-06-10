function! plugins#load() abort
  call plug#begin()

  Plug 'joshdick/onedark.vim'
  Plug 'sheerun/vim-polyglot'
  Plug 'christoomey/vim-tmux-navigator'
  Plug 'junegunn/fzf'
  Plug 'junegunn/fzf.vim'
  Plug 'tpope/vim-capslock'
  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-endwise'
  Plug 'tpope/vim-eunuch'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-obsession'
  Plug 'tpope/vim-repeat'
  Plug 'tpope/vim-sensible'
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-unimpaired'
  Plug 'tpope/vim-vinegar'
  Plug 'editorconfig/editorconfig-vim'
  Plug 'justinmk/vim-sneak'
  Plug 'vim-scripts/replacewithregister'
  Plug 'easymotion/vim-easymotion'
  Plug 'bkad/camelcasemotion'
  Plug 'airblade/vim-gitgutter'
  Plug 'yggdroot/indentline'
  Plug 'jiangmiao/auto-pairs'
  Plug 'mattn/emmet-vim'
  Plug 'prabirshrestha/vim-lsp'
  Plug 'mattn/vim-lsp-settings'
  Plug 'prabirshrestha/asyncomplete.vim'
  Plug 'prabirshrestha/asyncomplete-lsp.vim'
  Plug 'prabirshrestha/asyncomplete-ultisnips.vim'
  Plug 'sirver/ultisnips'
  Plug 'thomasfaingnaert/vim-lsp-snippets'
  Plug 'thomasfaingnaert/vim-lsp-ultisnips'
  Plug 'honza/vim-snippets'
  Plug 'dense-analysis/ale'
  Plug 'rhysd/vim-lsp-ale'

  call plug#end()
endfunction
