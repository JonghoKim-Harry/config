#!/bin/bash
##    Package Installation
if [ -e /etc/debian_version ]; then     #   Debian
    
    sudo apt-get update
    sudo apt-get install -y git vim ruby ctags
 
    # Install tmux
    sudo apt-get install -y tmux

    # Install lrzsz (ZMODEM)
    sudo apt-get install -y lrzsz

    # Install prerequisites for gem5
    sudo apt-get install -y git build-essential g++ zlib1g-dev scons m4 swig python-dev

    # ARM toolchain
    sudo apt-get install -y gcc-arm-linux-gnueabi

elif command -v yum > /dev/null; then   #   CentOS / RHEL
    sudo yum update -y
    sudo yum install -y tmux
    sudo yum install -y wget
    sudo yum install -y git vim-enhanced ruby ctags
fi

# Findout where this script is located
pushd . > /dev/null
PROJECT_HOME="${BASH_SOURCE[0]}";
while([ -h "${PROJECT_HOME}" ]); do
    cd "`dirname "${PROJECT_HOME}"`"
    PROJECT_HOME="$(readlink "`basename "${PROJECT_HOME}"`")";
done
cd "`dirname "${PROJECT_HOME}"`" > /dev/null
PROJECT_HOME="`pwd`";
popd  > /dev/null
echo "script=[${PROJECT_HOME}]"
echo "pwd   =[`pwd`]"

source $PROJECT_HOME/script/setup_vim.sh
source $PROJECT_HOME/script/setup_git.sh
source $PROJECT_HOME/script/setup_bash.sh

####    Terminal Markdown Viewer Setup
#CentOS/RHEL 7
#sudo yum install -y python python-pip
#sudo pip install markdown pygments pyyaml
#git clone https://github.com/axiros/terminal_markdown_viewer.git
#if command -v apt-get > /dev/null; then #   Ubuntu
#elif command -v yum > /dev/null; then   #   CentOS / RHEL

## Copy dot files to home directory
DOTFILES=$(ls -d .*)

for CONFIG_FILE in $DOTFILE
do
    if [[ $CONFIG_FILE != "." && $CONFIG_FILE != ".." ]]
    then
	cp $CONFIG_FILE ~
    fi
done

## Apply xmodmap file
xmodmap ~/.Xmodmap

## Install spacemacs
SPACEMACS=spacemacs_release-0.200
cp -R $SPACEMACS/* ~/.emacs.d
