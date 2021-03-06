call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

Plug 'christoomey/vim-tmux-navigator'
Plug 'vim-airline/vim-airline'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'github/copilot.vim'

call plug#end()

nnoremap [h :bprevious<CR>
nnoremap [l :bnext<CR>
nnoremap [d :bd<CR>
nnoremap <C-p> :GFiles<CR>

let g:airline#extensions#tabline#enabled = 1
colorscheme slate
set background=dark

set tabstop=4
set shiftwidth=4

nnoremap [q :cprevious<CR>
nnoremap ]q :cnext<CR>

nnoremap <C-b> :NERDTreeToggle<CR>

set clipboard+=unnamedplus

set number

inoremap jk <ESC>

