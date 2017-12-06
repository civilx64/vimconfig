" Don't try to be vi compatible
set nocompatible

" Helps force plugins to load correctly when it is turned back on below
filetype off

"set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.

" Keep Plugin commands between vundle#begin()/end().
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'flazz/vim-colorschemes'
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'davidhalter/jedi-vim'
Plugin 'jmcantrell/vim-virtualenv'
"Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on Github
" Plugin 'git://git.wincent.com/command-t.git
" git repos on your local machine (e.g. when working on your own plugin)
" Plugin 'file:///home/scott/path/to/plugin'

" syntax checking and highlighting
Plugin 'vim-syntastic/syntastic'

" All of your Plugins must be added before the following line
call vundle#end()		" required
filetype plugin indent on	" required for plugins to load correctly

" Brief help
" :PluginList		- lists configured plugins
" :PluginInstall	- installs plugins; append `!` to update or 
"				just :PluginUpdate
" :PluginSearch foo	- searches for foo; append `!` to refresh local cache
" :PluginClean		- confirms removal of unused plugins; append `!` to
" 				auto-approve removal
"
" See :h vundle for more details or wiki for FAQ
"
" non-Plugin stuff goes after this line

syntax on

" TODO: pick a leader key
" let mapleader = ","

" Security
set modelines=0

" Show line numbers
set number
" Show relative line numbers
set relativenumber

" Switch relative and absolute numbers when changing focus or modes
" https://jeffkreeftmeijer.com/vim-number/
" accessed 2017-10-3
augroup numbertoggle
        autocmd!
        autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
        autocmd BufLeave,FocusLost,InsertEnter * set norelativenumber
augroup end       

" Show file stats
set ruler

" Encoding
set encoding=utf-8

" Whitespace
set wrap
" set textwidth=79

" set tabs to have 4 spaces
set ts=4

" expand tabs into spaces
set expandtab

" Status bar
set laststatus=2

" Searching
" highlight all search matches
set hlsearch

" move cursor to the next match while searching
set incsearch

" case-insensitive search
set ignorecase

" case-sensitive search if the search string contains mixed case
set smartcase

" when a bracket is inserted, briefly jump to the matching one
set showmatch

" specify where splits should occur
set splitbelow
set splitright

" split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with spacebar
nnoremap <space> za

" color schemes and themes
colorscheme jellybeans
"set background=light

" 256 colors in terminal for tmux
if $TERM == 'screen'
set t_Co=256
endif

" highlight current line when in insert mode
:autocmd InsertEnter * set cul
:autocmd InsertLeave * set nocul

" folding and indents for XML data
" per
" https://stackoverflow.com/questions/32154285/folding-expanding-and-colapsing-xml-tags-in-vim-xml-parsing
" accessed 2017-10-11
augroup XML
        autocmd!
        autocmd FileType xml let g:xml_syntax_folding=1
        autocmd FileType xml setlocal foldmethod=syntax
        autocmd FileType xml :syntax on
        autocmd FileType xml :%foldopen!
augroup END       

" ignore python bytecode files
let NERDTreeIgnore=['\.pyc$', '\~$']

" flag unnecessary white space
" won't work unless there is a highlight group named `BadWhiteSpace`
" au BufNewFile,BufRead *.py,*.pyw,*.c,*.h match BadWhiteSpace /\s\+$/

" use bash shell
set shell=/bin/bash

