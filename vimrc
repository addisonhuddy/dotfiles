" Addison Huddy's .vimrc

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/vundle'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'ervandew/supertab'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-fugitive'
Plugin 'kchmck/vim-coffee-script'
Plugin 'Yggdroot/indentLine'
Plugin 'fatih/vim-go'
Plugin 'klen/python-mode'
Plugin 'altercation/vim-colors-solarized'
Plugin 'mattn/emmet-vim'
Plugin 'tpope/vim-surround'
Plugin 'majutsushi/tagbar'
Plugin 'pangloss/vim-javascript'
Plugin 'bling/vim-airline'

call vundle#end()

" filetype
filetype plugin on

" colors
syntax enable
set background=dark
colorscheme solarized

" indentation
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set autoindent
filetype plugin indent on " not sure about this one
set nowrap

" folding
let g:vim_markdown_folding_disabled=1

" python
let g:pymode_rope=0

" UI
set number
set showcmd
set cursorline
filetype indent on
set wildmenu
set showmatch

" search
set incsearch
set hlsearch

" leader
let mapleader=","

" CtrlP settings
let g:ctrlp_match_window='bottom,order:ttb'
let g:ctrlp_switch_buffer=0
let g:ctrlp_user_command='ag %s -l --nocolor --hidden -g ""'
let g:ctrlp_working_path_mode = "ra"

" backup stuff
set nobackup
set nowritebackup

" nerdtree
map <C-t> :NERDTreeToggle<CR>

" tabbing buffers
nnoremap <C-o> :bnext<CR>
nnoremap <C-i> :bprevious<CR>

set backspace=2

" airline
set laststatus=2
