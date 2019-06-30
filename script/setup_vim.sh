#!/bin/bash
# Findout where this script is located
pushd . > /dev/null
WHERE_AM_I="${BASH_SOURCE[0]}";
while([ -h "${WHERE_AM_I}" ]); do
    cd "`dirname "${WHERE_AM_I}"`"
    WHERE_AM_I="$(readlink "`basename "${WHERE_AM_I}"`")";
done
cd "`dirname "${WHERE_AM_I}"`" > /dev/null
WHERE_AM_I="`pwd`";
popd  > /dev/null
echo "script=[${WHERE_AM_I}]"
echo "pwd   =[`pwd`]"

#
PROJECT_HOME=$(dirname $WHERE_AM_I)

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
cp $PROJECT_HOME/mkcscope.sh $HOME/.mkcscope.sh
