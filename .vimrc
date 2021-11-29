set number
set relativenumber
syntax enable
set numberwidth=1
set showcmd
set mouse=a
set ruler
set encoding=utf-8
set showmatch
set laststatus=2
set clipboard=unnamed
set nocompatible
filetype off
set foldmethod=indent
set foldlevel=99
let mapleader=" "
let g:ycm_autoclose_preview_window_after_completion=1
let python_highlight_all=1
syntax on

" PEP 8
au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix
" Red bad spaces
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" Diferent tab space for other filetypes
au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix



" Set the runtime path to include Vundle
set rtp+=~/.vim/bundle/Vundle.vim

" Initialize Vundle
call vundle#begin()

" Let Vundle manage Vundle
Plugin 'gmarik/Vundle.vim'

" Add pluggins here:
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'vim-syntastic/synstastic'
Plugin 'nvie/vim-flake8'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
"Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
"Plugin 'valloric/youcompleteme'


call vundle#end()


filetype plugin indent on


call plug#begin('~/.vim/plugger')


"Themes" 
Plug 'morhetz/gruvbox'

" Plugins
Plug 'valloric/youcompleteme'
Plug 'tpope/vim-fugitive'

cal plug#end()

colorscheme gruvbox
set bg=dark

" Keybindings
" Split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>


" Macros
nmap <Leader>a za " Folding code
nmap <Leader>w :w<CR> " Quick w 
nmap <Leader>q :q<CR> " Quick Q
nmap <Leader>z :e $HOME/.vimrc<CR>
nmap <Leader>v :PluginInstall<CR>
nmap <Leader>p :PlugInstall<CR>
nmap <Leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>
nmap <Leader>f :CtrlP<CR>


