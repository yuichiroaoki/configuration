call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

Plug 'christoomey/vim-tmux-navigator'
Plug 'vim-airline/vim-airline'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'jacoborus/tender.vim'

call plug#end()

nnoremap [h :bprevious<CR>
nnoremap [l :bnext<CR>
nnoremap [d :bd<CR>
nnoremap <C-p> :GFiles<CR>
nnoremap <C-f> :Rg<CR>

let g:airline#extensions#tabline#enabled = 1

syntax enable
colorscheme tender

set tabstop=4
set shiftwidth=4

nnoremap [q :cprevious<CR>
nnoremap ]q :cnext<CR>

set clipboard+=unnamedplus

set number

inoremap jk <ESC>

