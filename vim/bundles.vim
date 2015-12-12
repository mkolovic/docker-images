" Vundle setup
set nocompatible
filetype off
set rtp+=$HOME/.vim/bundle/Vundle.vim
call vundle#begin()

" Vundle
Plugin 'VundleVim/Vundle.vim'

" General plugins
Plugin 'scrooloose/nerdtree' " Tree like structure for directory exploration in vim
Plugin 'scrooloose/syntastic' " Syntax checking
Plugin 'jistr/vim-nerdtree-tabs' " Nerdtree in tabs
Plugin 'Valloric/YouCompleteMe' " Autocomplete
Plugin 'ekalinin/Dockerfile.vim' " Dockerfile syntax

" Python plugins
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'nvie/vim-flake8'

" Colorschemes
Plugin 'Donearm/Ubaryd'
Plugin 'jnurmine/Zenburn'

call vundle#end()
