call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

Plug 'christoomey/vim-tmux-navigator'
Plug 'preservim/nerdtree'
Plug 'jacoborus/tender.vim'
Plug 'vim-airline/vim-airline'

call plug#end()

if (has("termguicolors"))
 set termguicolors
endif

syntax enable
let g:airline#extensions#tabline#enabled = 1

nmap <leader>h :bprevious<CR>
nmap <leader>l :bnext<CR>
nmap <leader>f :Files<CR>
nmap <leader>g :GFiles<CR>

nnoremap [q :cprevious<CR>
nnoremap ]q :cnext<CR>

nnoremap <C-n> :NERDTree<CR>
nnoremap <C-b> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

set clipboard=unnamedplus
set number

inoremap jk <ESC>

set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc

