MY_PARENT=$(dirname $(readlink -f $0/..))
cp $MY_PARENT/.vimrc ~/
cp -R $MY_PARENT/.vim ~/

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
cp $MY_PARENT/mkcscope.sh $HOME/usr/bin
