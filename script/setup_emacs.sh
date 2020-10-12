#!/bin/bash

ROOT=$(realpath $(dirname $0)/..)

# Copy config files
cp $ROOT/.emacs $HOME
cp -r $ROOT/.emacs.d $HOME

# Install the latest emacs
sudo add-apt-repository ppa:kelleyk/emacs
sudo apt-get install emacs
