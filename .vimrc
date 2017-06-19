set t_Co=256 " enable 256 colours
set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"
" Plugins
" 
Plugin 'VundleVim/Vundle.vim'
Plugin 'nerdtree'
Plugin 'vim-fixkey'

call vundle#end()            " required
filetype plugin indent on    " required

map <C-n> :NERDTreeToggle<CR> " Map ctrl+n to nerdtree

syntax enable
colorscheme predawn
" Line numbers
set number
set relativenumber
" Tabs ( > spaces )
set tabstop=4
set softtabstop=4
set expandtab
" Move lines vim.wikia.com/wiki/Moving_lines_up_or_down
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv
