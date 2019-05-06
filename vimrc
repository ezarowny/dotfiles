" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'nvie/vim-flake8'
Plug 'altercation/vim-colors-solarized'
Plug 'sickill/vim-monokai'
Plug 'airblade/vim-gitgutter'
Plug 'mileszs/ack.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'groenewege/vim-less'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

" Set the colorscheme
set background=light
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
autocmd BufWritePost *.py call Flake8()

" vim-gitgutter settings
highlight clear SignColumn

" vim-airline settings
let g:airline_powerline_fonts = 1
let g:airline#extensions#whitespace#enabled = 1
let g:airline#extensions#tabline#enabled = 1

" nerdcommenter settings
let g:NERDSpaceDelims = 1
