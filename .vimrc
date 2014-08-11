set nocompatible
" allow unsaved background buffers and remember marks/undo for them
set hidden
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
:set t_Co=256 " 256 colors
:set background=dark


