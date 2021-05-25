#!/bin/bash
sudo apt install -y libsecret-1-0 libsecret-1-dev make pkg-config libglib2.0-dev
cd /usr/share/doc/git/contrib/credential/libsecret
sudo make
git config --global credential.helper /usr/share/doc/git/contrib/credential/libsecret/git-credential-libsecret
