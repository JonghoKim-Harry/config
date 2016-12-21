# Path to config/
MY_PARENT=$(dirname $(readlink -f "$0"))
PROJECT_HOME=$(dirname $MY_PARENT)
cp $PROJECT_HOME/.gitconfig $HOME/
