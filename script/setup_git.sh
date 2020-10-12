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

cp $PROJECT_HOME/.gitconfig $HOME/

## Git to encrypt credentials
git config --global credential.helper /usr/share/doc/git/contrib/credential/libsecret/git-credential-libsecret
