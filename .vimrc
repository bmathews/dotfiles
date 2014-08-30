execute pathogen#infect()
filetype plugin indent on

set nocompatible

" force powerline font
let g:airline_powerline_fonts = 1
" airline theme
let g:airline_theme="murmur"

" mixed mode for ctrl+p to allow for buffer switching
let g:ctrlp_cmd = 'CtrlPMixed'

" nerdtreetabs
map <Leader>n <plug>NERDTreeTabsToggle<CR>
let g:nerdtree_tabs_open_on_console_startup=1

" allow unsaved background buffers and remember marks/undo for them
set hidden

" disable word wrapping
set nowrap

" remember more commands and search history
set history=10000

set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent
set laststatus=2
set showmatch
set incsearch
set hlsearch
set ignorecase smartcase

" highlight current line
set cursorline
hi CursorLine   cterm=NONE ctermbg=darkgray ctermfg=NONE

set cmdheight=1
set switchbuf=useopen

" set showtabline=2
set nobackup
set nowritebackup

set showcmd

" Enable highlighting for syntax
syntax on

" color
set t_Co=256 " 256 colors
set background=dark

" line numbers
set number
