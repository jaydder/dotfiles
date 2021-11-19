syntax on
set nowrap
set encoding=utf8
set showcmd
"""" START Vundle Configuration
" Disable file type for vundle
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Utility
Plugin 'scrooloose/nerdtree'
Plugin 'ervandew/supertab'
Plugin 'BufOnly.vim'
Plugin 'junegunn/fzf.vim'
Plugin 'junegunn/fzf'
Plugin 'godlygeek/tabular'
Plugin 'gilsondev/searchtasks.vim'
Plugin 'sheerun/vim-polyglot'
" Plugin 'Shougo/deoplete.nvim'
Plugin 'roxma/nvim-yarp'
Plugin 'roxma/vim-hug-neovim-rpc'


" Generic Programming Support
Plugin 'tomtom/tcomment_vim'
Plugin 'tobyS/vmustache'

"Python
Plugin 'davidhalter/jedi-vim'
Plugin 'raimon49/requirements.txt.vim', {'for': 'requirements'}
Plugin 'vim-python/python-syntax'

" Theme / Interface
"Plugin 'vim-airline/vim-airline'
Plugin 'itchyny/lightline.vim'
Plugin 'owickstrom/vim-colors-paramount'

Plugin 'vim-airline/vim-airline-themes'
Plugin 'mkarmona/colorsbox'
Plugin 'w0ng/vim-hybrid'
Plugin 'daylerees/colour-schemes'
Plugin 'ryanoasis/vim-devicons'

" Robot Framework
Plugin 'mfukar/robotframework-vim'
Plugin 'evedovelli/rst-robotframework-syntax-vim'

" OSX stupid backspace fix
set backspace=indent,eol,start

call vundle#end()            " required
filetype plugin indent on    " required
"""" END Vundle Configuration

"""""""""""""""""""""""""""""""""""""
" Configuration Section
"""""""""""""""""""""""""""""""""""""
set completeopt-=preview

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

set noswapfile
set nobackup
set nowb

set scrolloff=8
set sidescrolloff=15
set sidescroll=1

set hlsearch
" Always display the status line
set laststatus=2

" Enable highlighting of the current line
set cursorline

" Theme and Styling
set t_Co=256
set background=dark
"set termguicolors

let g:hybrid_reduced_contrast = 1
let g:hybrid_custom_term_colors= 1
colorscheme hybrid

let g:airline#extensions#tabline#enabled = 1
" let g:airline_powerline_fonts = 1
" let g:airline_theme='hybrid'

let g:lightline = {
       \ 'colorscheme': 'darcula',
       \ }

let g:deoplete#enable_at_startup = 1

" Fzf Configuration
" This is the default extra key bindings
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

" Default fzf layout
" - down / up / left / right
"let g:fzf_layout = { 'down': '~40%' }

" In Neovim, you can set up fzf window using a Vim command
"let g:fzf_layout = { 'window': 'enew' }
"let g:fzf_layout = { 'window': '-tabnew' }

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
nmap <leader>q :NERDTreeToggle<CR>
nmap <leader>f :Files<CR>

" Mapping selecting Mappings
nnoremap <leader>d :t.<CR>
nnoremap <Leader>w :w<CR>
nmap <Tab> :bnext<CR>
nmap <leader>t :BufOnly<CR>
nnoremap <leader>s :vert term<CR>

nnoremap <leader>ç <C-W>l<CR>
nnoremap <leader>l <C-W>h<CR>
" Advanced customization using autoload functions
set mouse=a

"" NERDTree configuration
let g:NERDTreeChDirMode=2
let g:NERDTreeIgnore=['\.rbc$', '\~$', '\.pyc$', '\.db$', '\.sqlite$', '__pycache__']
let g:NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$', '\.bak$', '\~$']
let g:NERDTreeShowBookmarks=1
let g:nerdtree_tabs_focus_on_files=1
let g:NERDTreeWinSize = 28
let g:NERDTreeDirArrowExpandable = '►'
let NERDTreeShowHidden=1
let NERDTreeMinimalUI = 1
let g:NERDTreeDirArrowCollapsible = '▼'

let g:python_highlight_all = 1

au! BufRead,BufWrite,BufWritePost,BufNewFile *.org
au BufEnter *.org            call org#SetOrgFileType()

let g:jedi#goto_command = 0

set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.db,*.sqlite
set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar
set guifont=Hack\ 11


highlight LineNr           ctermfg=8    ctermbg=none    cterm=none
highlight CursorLineNr     ctermfg=7    ctermbg=8       cterm=none
highlight VertSplit        ctermfg=0    ctermbg=8       cterm=none
highlight Statement        ctermfg=blue    ctermbg=none    cterm=bold
highlight Directory        ctermfg=4    ctermbg=none    cterm=none
highlight StatusLine       ctermfg=7    ctermbg=8       cterm=none
highlight StatusLineNC     ctermfg=7    ctermbg=8       cterm=none
highlight NERDTreeClosable ctermfg=2
highlight NERDTreeOpenable ctermfg=8
highlight Comment          ctermfg=4       ctermbg=none    cterm=italic
highlight Search           ctermfg=none    ctermbg=240    cterm=none
highlight CursorLine       cterm=NONE      ctermbg=none   ctermfg=none

