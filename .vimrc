execute pathogen#infect()
filetype plugin indent on

set nocompatible

" set leader to comma
let mapleader = ";"

" hide gui scrollbars
set guioptions-=r
set guioptions-=L

" change emmet completion to tab
imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")

" disable default map for multicorsor and change
let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_next_key='<C-d>'
let g:multi_cursor_quit_key='<Esc>'

" disable auto-folding for vim-markdown
let g:vim_markdown_folding_disabled=1

" force powerline font
let g:airline_powerline_fonts = 1

" airline theme
let g:airline_theme="murmur"

" mixed mode for ctrl+p to allow for buffer switching
let g:ctrlp_cmd = 'CtrlPMixed'
" exclude gitignore'd things?
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

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

set showtabline=2
set nobackup
set nowritebackup
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//

set showcmd

" Enable highlighting for syntax
syntax on

" color
set t_Co=256 " 256 colors
set background=dark
colorscheme base16-default
let base16colorspace=256
set guifont=Source\ Code\ Pro\ Medium:h13

" line numbers
set number
