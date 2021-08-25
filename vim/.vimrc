set nocompatible
filetype off                " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
    Plugin 'gmarik/Vundle.vim'
    Plugin 'scrooloose/nerdtree'
    Plugin 'vim-airline/vim-airline'
    Plugin 'vim-airline/vim-airline-themes'
    Plugin 'tpope/vim-fugitive'
    Plugin 'flazz/vim-colorschemes'
    Plugin 'L9'
    Plugin 'git://git.wincent.com/command-t.git'
    Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
    Plugin 'hynek/vim-python-pep8-indent'
call vundle#end()            " required
filetype plugin indent on   " required

map <C-N> :NERDTreeToggle <CR>

""" BLACK BACKGROUND
colorscheme blackboard
"colorscheme jellyx
"colorscheme antares
"colorscheme automation

""" GRAY BACKGROUND
"colorscheme lilypink
"colorscheme jellybeans
"colorscheme inori
"colorscheme evening
"colorscheme benlight

" Enable 256 colors in Vim
set t_Co=256
let g:airline_powerline_fonts=1		"    Support smoothe arrow effects for vim-airline
let g:airline_theme='lucius'		"    air-line theme: lucius

syntax on
set laststatus=2                    "   For vim-airline to always display status line.
set number
set autoindent
set cindent
set smartindent
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set ignorecase
set ruler
set fileencoding=utf-8
set hlsearch
set fencs=utf-8
set cc=80                           " colorcolumn=80 : To make 80-column indication

""" Set up CSCOPE
set csprg=/usr/bin/cscope
set csto=0
set cst
set nocsverb
if filereadable("./cscope.out")
    cs add cscope.out
else
    cs add /usr/src/linux/cscope.out
endif
set csverb
set nocscopeverbose

"""
set lazyredraw
