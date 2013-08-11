" jshint2
"Lint JavaScript files after saving it:
let jshint2_save = 1
"Skip lint confirmation for non JavaScript files:
let jshint2_confirm = 0

" Indentation
set autoindent
set smartindent
set copyindent

" Set encoding
set encoding=utf-8
set termencoding=utf-8
set fileencodings=utf-8

" Don't update the display while executing macros
set lazyredraw

" Whitespace stuff
set nowrap
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set smarttab"

" pathogen
execute pathogen#infect()
syntax on
filetype plugin indent on

" fugitive.vim
map <C-b> :Gblame<CR>

" NERDTree
" autocmd vimenter * if !argc() | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
