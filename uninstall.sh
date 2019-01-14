#!/bin/bash
if [ -e ~/.vimrc ]; then
    rm ~/.vimrc
fi

if [ -e ~/.vim ]; then
    rm -rf ~/.vim
fi

if [ -e ~/.gitconfig ]; then
    rm ~/.gitconfig
fi

if [ -e ~/.bashrc ]; then
    rm ~/.bashrc
fi

if [ -e ~/.profile ]; then
    rm ~/.profile
fi
