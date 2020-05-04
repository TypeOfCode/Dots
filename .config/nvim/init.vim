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

call plug#begin('~/.config/nvim/plugged')

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

Plug 'neoclide/coc.nvim', {'branch': 'release'}

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

" Airline coc-status
let g:airline#extensions#coc#enabled = 1

" Javascript Highlighting
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1

" Indent Line
let g:indentLine_char = '│'
let g:indentLine_first_char = '│'
let g:indentLine_showFirstIndentLevel = 1
let g:indentLine_setColors = 0

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
set matchpairs+=<:> " use % to jump between pairs
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

" Color scheme (terminal)

" coc.nvim Config (Too Big)
set nobackup
set nowritebackup

set cmdheight=2
set updatetime=300

set shortmess+=c

set signcolumn=yes

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <c-space> coc#refresh()

if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  imap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

autocmd CursorHold * silent call CocActionAsync('highlight')

nmap <leader>rn <Plug>(coc-rename)

xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

nmap <leader>ac  <Plug>(coc-codeaction)
nmap <leader>qf  <Plug>(coc-fix-current)

xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

nmap <silent> <TAB> <Plug>(coc-range-select)
xmap <silent> <TAB> <Plug>(coc-range-select)

command! -nargs=0 Format :call CocAction('format')

command! -nargs=? Fold :call     CocAction('fold', <f-args>)

command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

function! StatusDiagnostic() abort
  let info = get(b:, 'coc_diagnostic_info', {})
  if empty(info) | return '' | endif
  let msgs = []

  if get(info, 'error', 0)
    call add(msgs, 'E' . info['error'])
  endif
  if get(info, 'warning', 0)
    call add(msgs, 'W' . info['warning'])
  endif

  return join(msgs, ' ') . ' ' . get(g:, 'coc_status', '')
endfunction

set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}%{StatusDiagnostic()}

nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>

" coc extension config
let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-pairs',
  \ 'coc-tsserver',
  \ 'coc-eslint',
  \ 'coc-json',
  \ ]

""""" Syntax Highlighting for .rasi
au BufNewFile,BufRead /*.rasi setf css
