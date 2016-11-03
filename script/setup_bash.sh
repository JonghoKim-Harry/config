MY_PARENT=$(dirname $(readlink -f $0/..))
cp $MY_PARENT/.profile ~/
cp $MY_PARENT/.bashrc ~/
