" Little Things
"  ___________________________________________________________________________        
"   ___________________________________________________________________________       
"    ______________________/\\\_________________________________________________      
"     ________/\\\____/\\\_\///_____/\\\\\__/\\\\\____/\\/\\\\\\\______/\\\\\\\\_     
"      _______\//\\\__/\\\___/\\\__/\\\///\\\\\///\\\_\/\\\/////\\\___/\\\//////__    
"       ________\//\\\/\\\___\/\\\_\/\\\_\//\\\__\/\\\_\/\\\___\///___/\\\_________   
"        _________\//\\\\\____\/\\\_\/\\\__\/\\\__\/\\\_\/\\\_________\//\\\________  
"         __/\\\____\//\\\_____\/\\\_\/\\\__\/\\\__\/\\\_\/\\\__________\///\\\\\\\\_ 
"          _\///______\///______\///__\///___\///___\///__\///_____________\////////__

set nocompatible

filetype off

" TODO: Load plugins here (vim-plugged)
call plug#begin('~/.vim/plugged')

Plug 'junegunn/vim-easy-align'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'mattn/emmet-vim'

Plug 'tpope/vim-commentary'

Plug 'sheerun/vim-polyglot'
Plug 'othree/yajs.vim'

Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'morhetz/gruvbox'

Plug 'turbio/bracey.vim'

Plug 'ayu-theme/ayu-vim'
Plug 'Yggdroot/indentLine'

Plug 'kovisoft/slimv'

Plug 'chrisbra/colorizer'
Plug 'tpope/vim-surround'

Plug '/home/modelz/.vim/plugged/YouCompleteMe'

call plug#end()

syntax on

filetype plugin indent on

" True Color
set termguicolors

set background=dark
set t_Co=256
let g:hybrid_termcolors=256
let g:hybrid_termtrans=0.9
hi Normal ctermbg=none

colorscheme gruvbox
hi Normal guibg=NONE ctermbg=NONE

" Airline Theme
let g:airline_theme='base16_gruvbox_dark_hard'
let g:airline_powerline_fonts=1

" Javascript Highlighting
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1

" Indent Line
let g:indentLine_char = '│'
let g:indentLine_first_char = '│'
let g:indentLine_showFirstIndentLevel = 1
let g:indentLine_setColors = 0

" YouCompleteMe Config
let g:ycm_add_preview_to_completeopt = 1
let g:ycm_autoclose_preview_window_after_completion = 1

set mouse=a

let mapleader = " "

set modelines=0

" Show line numbers
set number
set relativenumber

" Show file stats
set ruler

set visualbell
set t_vb=

" Encoding
set encoding=utf-8

" Whitespace
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround

" Cursor motion
set scrolloff=5
set backspace=indent,eol,start
set matchpairs+=<:>
runtime! macros/matchit.vim

" Move up/down editor lines
nnoremap j gj
nnoremap k gk

" Allow hidden buffers
set hidden

" Rendering
set ttyfast

" Status bar
set laststatus=2

" Last line
set showmode
set showcmd

" Searching
nnoremap / /\v
vnoremap / /\v
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch
map <leader><space> :let @/=''<cr> " clear search

" Remap help key.
inoremap <F1> <ESC>:set invfullscreen<CR>a
nnoremap <F1> :set invfullscreen<CR>
vnoremap <F1> :set invfullscreen<CR>

" Remap split navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Formatting
map <leader>q gqip

" Visualize tabs and newlines
set listchars=tab:▸\ ,eol:¬
map <leader>l :set list!<CR> " Toggle tabs and EOL
