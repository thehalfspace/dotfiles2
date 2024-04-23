" Vim plug stuff: pluginns will be downloaded under the directory
call plug#begin('~/.vim/plugged')

" Declare the list of plugins
Plug 'vim-scripts/wombat256.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-fugitive'
Plug 'jiangmiao/auto-pairs'
Plug 'JuliaEditorSupport/julia-vim'
Plug 'vim-airline/vim-airline'
Plug 'fladson/vim-kitty'
Plug 'preservim/nerdtree'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}

" Plug 'davidhalter/jedi-vim'
" Plug 'ycm-core/YouCompleteMe', {'do': './install.py --clangd-completer --ts-completer'}

call plug#end()

" Colorscheme
color wombat256mod

" show existing tab with 4 spaces width
set tabstop=4

" when indenting with '>', use 4 spaces width
set shiftwidth=4

" On pressing tab, insert 4 spaces
set expandtab

syntax on
filetype plugin indent on

" Short esc key timeout
set timeoutlen=1000 ttimeoutlen=0

" More natural split opening
set splitbelow
set splitright

set nu
set cursorline
set ruler
set ignorecase
set smartcase
set hlsearch
set wildmenu

" Set syntax highlighting for markdown
let g:markdown_fenced_languages = ['html', 'py=python', 'sh=bash', 'julia', 'c', 'cpp', 'rust']

" for lightline
set laststatus=2
if !has('gui_running')
      set t_Co=256
endif

" change semi colon to colon in normal mode
nnoremap ; :

" Posssibly faster scrolling
set ttyfast

" Faster navigation between splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Lightline colorscheme
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ }

" ===== tmuxline =====
"let g:tmuxline_powerline_separators = 0
"let g:tmuxline_preset = 'nightly_fox'

" =======vim-airline=====
let g:airline_section_b = '%{strftime("%c")}'
let g:airline_section_y = 'BN: %{bufnr("%")}'

" Set leader as ,
let mapleader=","

"-------------------
" Nercommenter stuff
" ------------------
filetype plugin on

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multiline comments
let g:NERDCompactSexyComs = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

"---------------------
"Nerdtree preferences
"---------------------
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Start NERDTree and put the cursor back in the other window.
" autocmd VimEnter * NERDTree | wincmd p

" Set NERDTree window size
let g:NERDTreeWinSize=20
