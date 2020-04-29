set nocompatible
filetype off

call plug#begin('~/.vim/plugged')
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
Plug 'yegappan/mru'
call plug#end()


let mapleader=","

syntax on
colorscheme elflord

set noerrorbells

"netrw stuff
let g:netrw_liststyle=1

"tab stuff
nmap <Leader>tn :tabnew<Enter>
nmap <Leader>tl :tabnext<Enter>
nmap <Leader>th :tabprev<Enter>

"MRU remap
nmap <Leader>f :MRU<Enter>

nmap <Leader>y :'<,'>.w !pbcopy<Enter><Enter>
nmap <Leader>p :r !pbpaste<Enter>

"more characters will be sent to the screen for redrawing
set ttyfast
"time waited for key press(es) to complete. It makes for a faster key response
set ttimeout
set ttimeoutlen=50
"disable file backup (if you don't need it)
set nobackup
set noswapfile
"make backspace behave properly in insert mode
set backspace=indent,eol,start
"display incomplete commands
set showcmd
"a better menu in command mode
set wildmenu
set wildmode=longest:full,full
"hide buffers instead of closing them even if they contain unwritten changes
set hidden
"disable soft wrap for lines
set nowrap
"always display the status line
set laststatus=2
"display line numbers on the left side
set relativenumber
set number
"highlight current line
set cursorline
"new splits will be at the bottom or to the right side of the screen
set splitbelow
set splitright

"always set autoindenting on
set autoindent
set breakindent

set tabstop=2
set shiftwidth=2
set expandtab

"incremental search
set incsearch
"highlight search
set hlsearch
"searches are case insensitive unless they contain at least one capital letter
set ignorecase
set smartcase
