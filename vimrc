set nocompatible              " be iMproved
filetype off                  " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" Other bundles:
"
Bundle 'kien/ctrlp.vim'
Bundle 'tpope/vim-fugitive'
Bundle 'bling/vim-airline'
Bundle 'nvie/vim-flake8'
Bundle 'altercation/vim-colors-solarized'
Bundle 'sickill/vim-monokai'
Bundle 'airblade/vim-gitgutter'
Bundle 'mileszs/ack.vim'
Bundle 'scrooloose/nerdcommenter'
Bundle 'groenewege/vim-less'

filetype plugin indent on     " required!
syntax enable

"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install (update) bundles
" :BundleSearch(!) foo - search (or refresh cache first) for foo
" :BundleClean(!)      - confirm (or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle commands are not allowed.

" Set the colorscheme
set background=dark
colorscheme solarized

" Tab stuff
set expandtab
set softtabstop=4
set shiftwidth=4
set tabstop=4

" Indentation
set autoindent
set smartindent

" Always show the status bar
set laststatus=2
set noshowmode

" Show both relative numbers and the current line
set number
set relativenumber

" ctrlp settings
set wildignore+=*.pyc

" vim-flake8 settings
let flake8_max_line_length = 99
autocmd BufWritePost *.py call Flake8()

" vim-gitgutter settings
highlight clear SignColumn

" vim-airline settings
let g:airline_powerline_fonts = 1
let g:airline#extensions#whitespace#enabled = 1
let g:airline#extensions#tabline#enabled = 1