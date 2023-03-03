call plug#begin('~/.vim/plugged')
" Utility
Plug 'scrooloose/nerdtree'
Plug 'ervandew/supertab'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf'
Plug 'godlygeek/tabular'
Plug 'gilsondev/searchtasks.vim'
Plug 'sheerun/vim-polyglot'
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'
Plug 'ryanoasis/vim-devicons'
Plug 'voldikss/vim-floaterm'
Plug 'schickling/vim-bufonly'
Plug 'airblade/vim-gitgutter'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }

" Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Generic Programming Support
Plug 'tomtom/tcomment_vim'
Plug 'tobyS/vmustache'
Plug 'ekalinin/Dockerfile.vim'

"Python
Plug 'davidhalter/jedi-vim'
Plug 'vim-python/python-syntax'

" Theme / Interface
Plug 'w0ng/vim-hybrid'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'bluz71/vim-moonfly-colors'
Plug 'andreasvc/vim-256noir'


" Robot Framework
Plug 'mfukar/robotframework-vim'
Plug 'evedovelli/rst-robotframework-syntax-vim'


call plug#end()
"""""""""""""""""""""""""""""""""""""
" Configuration Section
"""""""""""""""""""""""""""""""""""""
set completeopt-=preview
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.db,*.sqlite
set backspace=indent,eol,start

" Show linenumbers
set number
set ruler
"set relativenumber

" Set Proper Tabs
set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=4
set expandtab

set noshowmode

set noswapfile
set nobackup
set nowb
set nowrap

set scrolloff=8
set sidescrolloff=15
set sidescroll=1

set hlsearch
" Always display the status line
set laststatus=1

" Enable highlighting of the current line
set cursorline

set shell=/bin/bash

" Theme and Styling
set t_Co=256
set background=dark
" set termguicolors

let g:hybrid_reduced_contrast = 1
let g:hybrid_custom_term_colors= 1
colorscheme hybrid
" colorscheme hagen

" This is the default extra key bindings
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

" Default fzf layout
" - down / up / left / right
" let g:fzf_layout = { 'down': '~40%' }

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='term'

" In Neovim, you can set up fzf window using a Vim command
" let g:fzf_layout = { 'window': 'enew' }
" let g:fzf_layout = { 'window': '-tabnew' }

" Customize fzf colors to match your color scheme
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

" Enable per-command history.
" CTRL-N and CTRL-P will be automatically bound to next-history and
" previous-history instead of down and up. If you don't like the change,
" explicitly bind the keys to down and up in your $FZF_DEFAULT_OPTS.
let g:fzf_history_dir = '~/.local/share/fzf-history'


let mapleader = ","
"""""""""""""""""""""""""""""""""""""
" Mappings configurationn
"""""""""""""""""""""""""""""""""""""
" Mapping selecting Mappings
nmap     <leader>q :NERDTreeToggle<CR>
nnoremap <leader>d :t.<CR>
nmap     <Tab> :bnext<CR>
nmap     <leader>t :BufOnly<CR>
nnoremap <leader>ç <C-W>l<CR>
nnoremap <leader>l <C-W>h<CR>
nmap     <leader>s :Ag<CR>
nnoremap <leader>f :Files<cr>
nnoremap <leader>b <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <A-a> :FloatermToggle<CR>
tnoremap <A-a> <C-\><C-n>:FloatermToggle<CR>
nnoremap <silent> <Leader>+ :vertical reseize +5<CR>
nnoremap <silent> <Leader>- :vertical reseize -5<CR>
" inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"


" Advanced customization using autoload functions
set mouse=a

"" NERDTree configuration
let g:NERDTreeChDirMode=2
let g:NERDTreeIgnore=['\.rbc$', '\~$', '\.pyc$', '\.db$', '\.sqlite$', '__pycache__']
let g:NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$', '\.bak$', '\~$']
let g:NERDTreeShowBookmarks=1
let g:nerdtree_tabs_focus_on_files=1
let g:NERDTreeWinSize = 30
let g:NERDTreeDirArrowExpandable = '►'
let NERDTreeShowHidden=1
let NERDTreeMinimalUI = 1
let g:NERDTreeDirArrowCollapsible = '▼'

let g:python_highlight_all = 1
let g:jedi#goto_command = 0
let g:jedi#auto_vim_configuration = 1
let g:jedi#auto_initialization = 1


highlight LineNr           ctermfg=240        ctermbg=none    cterm=none   guifg=240        guibg=none    gui=none
highlight CursorLineNr     ctermfg=red        ctermbg=none    cterm=bold   guifg=red        guibg=none    gui=bold 
highlight VertSplit        ctermfg=0          ctermbg=8       cterm=none
highlight Statement        ctermbg=none       cterm=bold
highlight Directory        ctermfg=4          ctermbg=none    cterm=none
highlight StatusLine       ctermfg=7          ctermbg=8       cterm=none   guifg=7          guibg=8       gui=none
highlight StatusLineNC     ctermfg=7          ctermbg=8       cterm=none   guifg=7          guibg=8       gui=none
highlight NERDTreeClosable ctermfg=2
highlight NERDTreeOpenable ctermfg=8
highlight Comment          ctermfg=4          ctermbg=none    cterm=italic
highlight Comment          ctermfg=240        ctermbg=none    cterm=italic
"highlight Search           ctermfg=none       ctermbg=240     cterm=none
hi search term=reverse ctermfg=0 ctermbg=3 guifg=bg guibg=SpringGreen
highlight CursorLine       cterm=NONE         ctermbg=none    ctermfg=none gui=none         guibg=none    guifg=none
highlight Function          cterm=bold
highlight Constant          ctermfg=white    cterm=bold
highlight TabLine           cterm=none         ctermbg=none    ctermfg=none
highlight VertSplit         cterm=none         ctermbg=none    ctermfg=grey
highlight ColorColumn      ctermfg=none      cterm=none gui=none ctermbg=none guifg=none guibg=none


