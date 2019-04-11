if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/bundle')
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#show_splits = 0
let g:airline#extensions#tabline#show_tabs = 1
let g:airline#extensions#tabline#show_tab_nr = 0
let g:airline#extensions#tabline#show_tab_type = 0
let g:airline#extensions#tabline#show_close_button = 1

if executable('git') 
    Plug 'airblade/vim-gitgutter'

    let g:gitgutter_sign_added='┃'
    let g:gitgutter_sign_modified='┃'
    let g:gitgutter_sign_removed='◢'
    let g:gitgutter_sign_removed_first_line='◥'
    let g:gitgutter_sign_modified_removed='◢'
endif

" language support
Plug 'othree/html5.vim'
Plug 'pangloss/vim-javascript'
Plug 'neovimhaskell/haskell-vim'

Plug 'ajh17/Spacegray.vim'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'morhetz/gruvbox'
call plug#end()


syntax enable
set ruler
set number
set background=dark

colorscheme dracula

" number of spaces a tab counts for
set tabstop=4

" number of spaces to use when <TAB>
set softtabstop=4

" turns tab into soft tabs
set expandtab
