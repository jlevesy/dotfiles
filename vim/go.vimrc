" Common setup between my profiles
source $HOME/dotfiles/vim/common.vimrc

" Setup vundle
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

source $HOME/dotfiles/vim/vundle/common.vim
source $HOME/dotfiles/vim/vundle/go.vim

call vundle#end()

"Indentation with spaces only
"1 tab = v spaces
set expandtab
set shiftwidth=4
set softtabstop=4

"Line of death
set textwidth=120
set colorcolumn=+100
