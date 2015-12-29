execute pathogen#infect()

set nocompatible
filetype off                " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
    Plugin 'VundleVim/Vundle.vim'
    Plugin 'scrooloose/nerdtree'
    Plugin 'tpope/vim-fugitive'
    Plugin 'L9'
    Plugin 'git://git.wincent.com/command-t.git'
    Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
    Plugin 'hynek/vim-python-pep8-indent'
call vundle#end()            " required
filetype plugin indent on   " required

map <C-N> :NERDTreeToggle <CR>

colorscheme molokai
highlight Comment cterm=bold

" Enable 256 colors in Vim
set t_Co=256

syntax on
set autoindent
set cindent
set smartindent
set number
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set ignorecase
set ruler
set fileencoding=utf-8
set hlsearch
set fencs=utf-8

autocmd BufReadPre SConstruct set filetype=python
autocmd BufReadPre SConscript set filetype=python

" ctags
set tags=./tags
map <C-\> :botright vs <CR>:exec("tj ".expand("<cword>"))<CR>
map <leader><C-\> :tab split<CR>:exec("tj ".expand("<cword>"))<CR>

