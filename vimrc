" Addison Huddy's .vimrc

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Bundle 'gmarik/vundle'
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
Bundle 'tomasr/molokai'
Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Bundle 'terryma/vim-multiple-cursors'
Bundle 'ervandew/supertab'
Bundle 'bronson/vim-trailing-whitespace'
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "garbas/vim-snipmate"
Bundle 'godlygeek/tabular'
Bundle 'plasticboy/vim-markdown'
Bundle 'vim-ruby/vim-ruby'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-fugitive'
Bundle 'kchmck/vim-coffee-script'
Bundle 'Yggdroot/indentLine'
Bundle 'fatih/vim-go'
Bundle 'klen/python-mode'

call vundle#end()

" colors
syntax enable
colorscheme molokai

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
"let g:ctrlp_match_window='bottom,order:ttb'
"let g:ctrlp_switch_buffer=0
"let g:ctrlp_user_command='ag %s -l --nocolor --hidden -g ""'
let g:ctrlp_working_path_mode = "ra"

" powerline stuff
set laststatus=2
set encoding=utf-8
set t_Co=256
let g:Powerline_symbols='fancy'

" backup stuff
set nobackup
set nowritebackup