#!/bin/bash

ROOT=$(realpath $(dirname $0)/..)

# Copy config files
cp $ROOT/.emacs $HOME
cp -r $ROOT/.emacs.d $HOME
