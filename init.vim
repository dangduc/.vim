" ---------------------------------------------------------------------
" System-Specific Configurations
" ---------------------------------------------------------------------

" Turn off vi compatibility
set nocompatible

" enforce utf-8 on all files
set encoding=utf-8

" shows input commands during nav mode in the bottom right
set showcmd

" turn on plugins, indent, file type handling and syntax highlight
filetype plugin indent on
syntax on

" turn off word wrapping
set nowrap

" tabs as spaces
set tabstop=2 shiftwidth=2
set expandtab

" for .qml
autocmd FileType qml setlocal shiftwidth=4 tabstop=4 softtabstop=4

set backspace=indent,eol,start

filetype indent off

" search behaviors
set hlsearch
set incsearch
set ignorecase
set smartcase

" multi-buffer sanity settings
set hidden

" :command history
set history=1000

" drop-down file/command completion
set wildmenu
set wildmode=list:longest

" scroll by N lines instead of default 1 line.
set scrolloff=3

" make markdown files have line wrap
au BufRead *.md set wrap
au BufRead *.md set linebreak

" make j, k move cursor screen-wise, not line-wise. Makes word-wrapped
" paragraph navigation sane. (http://statico.github.com/vim.html)
:nmap j gj
:nmap k gk

" swp files all in one place instead of in the dir of the working file
set backup 
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//

" disable creation of .swp files
set noswapfile

" disable automatci comment insertion on newline
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Disable mouse click to go to position
set mouse-=a

" ctags configuration
set tags=.tags,../.tags,../../.tags,../../../.tags,../../../../.tags

" display relative line number from line of cursor on left margin.
"set relativenumber

" show whitespace characters
set list
" show whitespace character for TAB
set listchars=tab:┄→

" use system clipboard instead of vim yank registers
" normal-mode y(ie, copy) d(ie, cut) p(ie, paste) works interchangeably/interoperatively with cmd-c, cmd-x, cmd-p.
" (see: http://vim.wikia.com/wiki/Accessing_the_system_clipboard)
set clipboard=unnamed

" add vertical line at 80 chars out
set colorcolumn=80

" map split navigation to CTRL-hjkl
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-L> <C-W><C-L>
" https://github.com/neovim/neovim/issues/2048
nmap <C-H> <C-W><C-H>

" map vertical split to Ctrl-|
nmap <C-\> :vsp<CR>

" ---------------------------------------------------------------------
" Plugin-Specific Configurations
" ---------------------------------------------------------------------

let g:python_host_prog = '/Users/dunguyen/.pyenv/versions/neovim2/bin/python'

" Specify a directory for plugins
call plug#begin('~/.vim/plugged')
Plug 'junegunn/seoul256.vim'
Plug 'sheerun/vim-polyglot'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Plug 'valloric/youcompleteme'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdtree'
call plug#end()

" ---------------------------------------------------------------------

" theming
let g:seoul256_background=235
"let g:seoul256_background=252
"colorscheme seoul256-light
colorscheme seoul256
let g:airline_theme='zenburn'

" fzf
set rtp+=~/.fzf
nmap <C-N> :Buffers<CR>
nmap <C-M> :Files<CR>
nmap <C-O> :Ag<CR>


" nerdtree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" ---------------------------------------------------------------------
" System-specific Configurations
" ---------------------------------------------------------------------
