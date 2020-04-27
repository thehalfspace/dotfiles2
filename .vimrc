" Vim plug stuff: pluginns will be downloaded under the directory
call plug#begin('~/.vim/plugged')

" Declare the list of plugins
Plug 'edkolev/tmuxline.vim'

Plug 'itchyny/lightline.vim'

call plug#end()

" show existing tab with 4 spaces width
set tabstop=4

" when indenting with '>', use 4 spaces width
set shiftwidth=4

" On pressing tab, insert 4 spaces
set expandtab

" Colorscheme
" set background=dark

syntax on
"filetype plugin inndent on

" More natural split opening
set splitbelow
set splitright

set nu
set cursorline
set cursorcolumn
set ruler
set ignorecase
set smartcase
set hlsearch
set wildmenu

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
      \}

" tmuxline.vim plugin
" Tmuxline lightline
