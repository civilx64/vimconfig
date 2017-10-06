" Don't try to be vi compatible
set nocompatible

" Helps force plugins to load correctly when it is turned bac on below
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
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on Github
" Plugin 'git://git.wincent.com/command-t.git
" git repos on your local machine (e.g. when working on your own plugin)
" Plugin 'file:///home/scott/path/to/plugin'

" Atom One Dark theme
Plugin 'rakr/vim-one'

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

" highlight current line when in insert mode
:autocmd InsertEnter * set cul
:autocmd InsertLeave * set nocul

" color schemes and themes
let g:airline_theme='one'
colorscheme one
set background=dark	"for the dark version
" set background=light 	"for the light version

