" Addison Huddy's .vimrc

set nocompatible              " be iMproved, required
filetype off                  " required

set shell=/bin/zsh

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
Plugin 'fatih/vim-go'
Plugin 'klen/python-mode'
Plugin 'mattn/emmet-vim'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-endwise'
Plugin 'majutsushi/tagbar'
Plugin 'pangloss/vim-javascript'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'jiangmiao/auto-pairs'
Plugin 'elzr/vim-json'
Plugin 'chriskempson/base16-vim'
Plugin 'rosenfeld/conque-term'
Plugin 'tmhedberg/matchit'
Plugin 'octol/vim-cpp-enhanced-highlight'
call vundle#end()

" filetype
filetype plugin on

" colors
syntax enable

let base16colorspace=256
set background=dark
colorscheme base16-default

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
set foldmethod=syntax
set foldlevelstart=20

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
let g:airline_theme = 'base16'
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#fnamemod=':t'

" encoding
set encoding=utf-8  " The encoding displayed.
set fileencoding=utf-8  " The encoding written to file.

" get rid of beeps
set noerrorbells visualbell t_vb=
if has('autocmd')
  autocmd GUIEnter * set visualbell t_vb=
endif

" Postgres development formatting
if match(getcwd(), "/pgsql") >=0 ||  match(getcwd(), "/postgresql") >= 0
  set cinoptions=(0
  set tabstop=4
  set shiftwidth=4
endif


" better support for multi-cursor
set selection=inclusive
