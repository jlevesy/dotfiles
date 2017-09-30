" Common setup between my profiles
source ${DOTFILES}/vim/common.vimrc

" Setup vundle
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

source ${DOTFILES}/vim/vundle/common.vim
source ${DOTFILES}/vim/vundle/php.vim

call vundle#end()

"Indentation with spaces only
"1 tab = v spaces
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4

"Line of death
set textwidth=120
set colorcolumn=+100
