#!/bin/bash

# Set bash as default $SHELL
sudo chsh -s /bin/bash $(whoami)

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

# Copy config files to home directory
cp $PROJECT_HOME/.profile $HOME/
cp $PROJECT_HOME/.bashrc $HOME/
cp $PROJECT_HOME/.tmux.conf $HOME/

# Activate copied config files
source $HOME/.bashrc
