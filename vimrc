set number
syntax on

call plug#begin()

Plug 'jpalardy/vim-slime'
Plug 'preservim/nerdtree'
Plug 'lervag/vimtex'

call plug#end()

let g:slime_target="tmux"
let slime_default_config = {"socket_name": "default", "target_pane": "{right-of}"}

nnoremap <C-n> :NERDTree<CR>


set mouse=a

set ttimeoutlen=5

let mapleader = "-" 
let maplocalleader = ","


set backspace=indent,eol,start

nmap <Leader>e ?##
nmap <Leader>r /##
nmap <Leader>w ?##jv/##k/##l


au BufRead,BufNewFile *.scala set filetype=scala
au! Syntax scala source ~/.vim/syntax/scala.vim

set backupdir=$TMPDIR//
set directory=$TMPDIR//
set autoread
