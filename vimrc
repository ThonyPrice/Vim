set nocompatible
set term=xterm-256color

if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
Plug 'tpope/vim-sensible'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

Plug 'sonph/onehalf', {'rtp': 'vim/'}

Plug 'itchyny/lightline.vim'


call plug#end()

filetype on

syntax on
set t_Co=256
set cursorline
colorscheme onehalfdark
let g:lightline = { 'colorscheme': 'onehalfdark' }

set guifont=Menlo\ Regular:h18

" set lines=35 "columns=150
set colorcolumn=90
set number relativenumber

set hidden
set history=100
filetype indent on
" set nowrap
" set tabstop=2
set shiftwidth=2
set expandtab
set smartindent
set autoindent

set hlsearch
"nnoremap <silent> <Esc> :nohlsearch<Bar>:echo<CR>
set showmatch


