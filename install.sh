cd $(dirname $(readlink -f $0))

####    Vim Setup
cp .vimrc ~/
cp -R .vim ~/

########    Essential Plugin: Vundle
if [ "$(ls -A ~/.vim/bundle/Vundle.vim)" ]; then
    echo "Vundle is already installed"
else
    echo "Vundle is not found. Install vundle..."
    mkdir -p ~/.vim/bundle
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

vim +PluginInstall +qall

####    Git Setup
cp .gitconfig ~/
cp .mailmap ~/

####    Bash Setup
cp .profile ~/
cp .bashrc ~/
