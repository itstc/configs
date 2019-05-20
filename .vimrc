set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'mxw/vim-jsx'
Plugin 'pangloss/vim-javascript'

Plugin 'scrooloose/nerdtree'
Plugin 'w0rp/ale'
Plugin 'prettier/vim-prettier'
Plugin 'neoclide/coc.nvim'

Plugin 'ap/vim-css-color'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'groenewege/vim-less'
Plugin 'othree/csscomplete.vim'

Plugin 'yegappan/mru'

call vundle#end()
filetype plugin indent on

let mapleader=","

syntax on
colorscheme elflord

set noerrorbells

"tab stuff
nmap <Leader>tn :tabnew<Enter>
nmap <Leader>tl :tabnext<Enter>
nmap <Leader>th :tabprev<Enter>

"MRU remap
nmap <Leader>f :MRU<Enter>

" Prettier config
let g:prettier#exec_cmd_async = 1

" Ale linter config
let g:ale_fixers = {
 \ 'javascript': ['eslint']
 \ }

let g:ale_sign_error = 'X'
let g:ale_sign_warning = '!'

let g:ale_fix_on_save = 1

"-------- NerdTree Config
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
nmap <Leader>t :NERDTreeToggle<Enter>
nmap <silent><Leader>v :NERDTreeFind<CR>
let NERDTreeQuitOnOpen = 1
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeDirArrows = 1
let NERDTreeMinimalUI = 1

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
set number
"highlight current line
set cursorline
"new splits will be at the bottom or to the right side of the screen
set splitbelow
set splitright

"always set autoindenting on
set autoindent

"incremental search
set incsearch
"highlight search
set hlsearch
"searches are case insensitive unless they contain at least one capital letter
set ignorecase
set smartcase
