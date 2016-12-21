# Path to config/
MY_PARENT=$(dirname $(readlink -f "$0"))
PROJECT_HOME=$(dirname $MY_PARENT)

# Copy config files to home directory
cp $PROJECT_HOME/.profile $HOME/
cp $PROJECT_HOME/.bashrc $HOME/
cp $PROJECT_HOME/.tmux.conf $HOME/
