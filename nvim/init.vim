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
Plug 'neoclide/coc.nvim', {'branch': 'release'}


Plug 'w0ng/vim-hybrid'
Plug 'owickstrom/vim-colors-paramount'
" Generic Programming Support
Plug 'tomtom/tcomment_vim'
Plug 'tobyS/vmustache'
Plug 'ekalinin/Dockerfile.vim'


call plug#end()
"""""""""""""""""""""""""""""""""""""
" Configuration Section
"""""""""""""""""""""""""""""""""""""
set completeopt-=preview
set wildignore+=*/tmp/*,*.o,*.swp,*.zip,*.pyc,*.db,*.sqlite
set backspace=indent,eol,start

set number
"set relativenumber

" Set Proper Tabs
set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=4
set expandtab

set statusline+=\ \ \ \ "

set noshowmode
set noruler
set laststatus=0
set noshowcmd
set showmode

set noswapfile
set nobackup
set nowb
set nowrap

set scrolloff=8
set sidescrolloff=15
set sidescroll=1

set hlsearch
set laststatus=1
set cursorline
set shell=/bin/bash

" Theme and Styling
set t_Co=256
set background=dark
set notermguicolors

colorscheme paramount
" colorscheme 256_noir

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
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
nnoremap ss <CR> :split \<CR>
nnoremap vv <CR> :vsplit <CR>

inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>

nmap <silent><nowait> gd <Plug>(coc-definition)
nmap <silent><nowait> gy <Plug>(coc-type-definition)
nmap <silent><nowait> gi <Plug>(coc-implementation)
nmap <silent><nowait> gr <Plug>(coc-references)

" Advanced customization using autoload functions
set mouse=a

"" NERDTree configuration
let g:NERDTreeChDirMode=2
let g:NERDTreeIgnore=['\.rbc$', '\~$', '\.pyc$', '\.db$', '\.sqlite$', '__pycache__']
let g:NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$', '\.bak$', '\~$']
let g:NERDTreeShowBookmarks=1
let g:nerdtree_tabs_focus_on_files=1
let g:NERDTreeWinSize = 38
let g:NERDTreeDirArrowExpandable = '►'
let NERDTreeShowHidden=1
let NERDTreeMinimalUI = 1
let g:NERDTreeDirArrowCollapsible = '▼'

highlight Normal            guibg=none          ctermbg=none     cterm=none
highlight CursorLineNr      ctermbg=none       cterm=bold
highlight Statement        cterm=bold
highlight Directory         ctermfg=4          ctermbg=none     cterm=none
highlight StatusLine        ctermfg=7          ctermbg=8        cterm=none   guifg=7          guibg=8       gui=none
highlight StatusLineNC      ctermfg=7          ctermbg=8        cterm=none   guifg=7          guibg=8       gui=none
highlight NERDTreeClosable  ctermfg=2
highlight NERDTreeOpenable  ctermfg=8
highlight Comment           ctermfg=240        ctermbg=none     cterm=italic
highlight Search           ctermfg=none       ctermbg=240      cterm=none
highlight CursorLine       cterm=NONE          ctermbg=none     ctermfg=none         guibg=none    guifg=none gui=none
highlight TabLine           cterm=none         ctermbg=none     ctermfg=none
highlight VertSplit         gui=none           guibg=none       guifg=grey
highlight ColorColumn       ctermfg=none       cterm=none       gui=none ctermbg=none guifg=none guibg=none
highlight StatusLineNC      cterm=none         ctermfg=none     ctermbg=none
highlight CocInlayHint      ctermbg=256        guibg=256        ctermfg=240  cterm=italic gui=italic
