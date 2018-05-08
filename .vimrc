set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'airblade/vim-gitgutter'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'slashmili/alchemist.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'elixir-editors/vim-elixir'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'vim-ruby/vim-ruby'
Plugin 'junegunn/fzf.vim'
call vundle#end()
filetype plugin indent on

map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
let NERDTreeAutoDeleteBuffer = 1
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline_section_z = '%3l/%L ln:%3v'

let g:NERDSpaceDelims=1

syntax enable
let mapleader=","

set tabstop=2
set shiftwidth=2
set expandtab
set autoindent
set smartindent
set hidden
set number relativenumber
set laststatus=2
set cursorline
set cursorcolumn
set scrolloff=3
set sidescrolloff=3
set background=dark
set termguicolors
set lcs=tab:▸\ ,trail:·,nbsp:·,eol:¬
set timeoutlen=500
set ttimeoutlen=0
set list
set encoding=utf-8 nobomb
set termencoding=utf-8
set ignorecase
set incsearch
set hlsearch
set smartcase
set nostartofline
set shortmess+=I
set showcmd
set showmode
set mouse=a
set ruler
set clipboard=unnamed
set esckeys
set backspace=indent,eol,start
set ttyfast
set noswapfile
set splitbelow
set splitright
set report=0
set wildmenu
set lazyredraw
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
set undodir=~/.vim/undo
set keymap=russian-jcukenwin
set iminsert=0
set imsearch=0

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
