# Path to config/
MY_PARENT=$(dirname $(readlink -f "$0"))
PROJECT_HOME=$(dirname $MY_PARENT)
cp $PROJECT_HOME/.vimrc $HOME/
cp -R $PROJECT_HOME/.vim $HOME/

## Install Vundle
if [ "$(ls -A ~/.vim/bundle/Vundle.vim)" ]; then
    echo "Vundle is already installed"
else
    echo "Vundle is not found. Install vundle..."
    mkdir -p ~/.vim/bundle
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

vim +PluginInstall +qall

## Cscope Set up
cp $PROJECT_HOME/mkcscope.sh $HOME/usr/bin
