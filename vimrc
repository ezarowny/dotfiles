set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Other bundles:
"
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'bling/vim-airline'
Plugin 'nvie/vim-flake8'
Plugin 'altercation/vim-colors-solarized'
Plugin 'sickill/vim-monokai'
Plugin 'airblade/vim-gitgutter'
Plugin 'mileszs/ack.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'groenewege/vim-less'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

syntax enable

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
let g:flake8_max_line_length = 99
autocmd BufWritePost *.py call Flake8()

" vim-gitgutter settings
highlight clear SignColumn

" vim-airline settings
let g:airline_powerline_fonts = 1
let g:airline#extensions#whitespace#enabled = 1
let g:airline#extensions#tabline#enabled = 1

" nerdcommenter settings
let g:NERDSpaceDelims = 1
