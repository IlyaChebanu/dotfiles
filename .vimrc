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
Plugin 'YouCompleteMe'
Plugin 'tcomment_vim'

call vundle#end()            " required
filetype plugin indent on    " required

map <C-n> :NERDTreeToggle<CR> " Map ctrl+n to nerdtree

syntax enable
colorscheme predawn
" Line numbers
set number
set relativenumber
" Soft tabs ( > spaces )
set tabstop=4
set softtabstop=4
set expandtab
set shiftwidth=4
" Move lines vim.wikia.com/wiki/Moving_lines_up_or_down
nnoremap <S-j> :m .+1<CR>==
nnoremap <S-k> :m .-2<CR>==
inoremap <S-j> <Esc>:m .+1<CR>==gi
inoremap <S-k> <Esc>:m .-2<CR>==gi
vnoremap <S-j> :m '>+1<CR>gv=gv
vnoremap <S-k> :m '<-2<CR>gv=gv
" Fix backspace
set backspace=2
" Remove annoying docstring window
autocmd FileType python setlocal completeopt-=preview
" Comment lines with cmd+/
nnoremap <C-/> :TComment<cr>
vnoremap <C-/> :TComment<cr>gv

" Indent lines with cmd+[ and cmd+]
nmap <C-]> >>
nmap <C-[> <<
vmap <C-]> >gv
vmap <C-[> <gv
