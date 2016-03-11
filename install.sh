cd $(dirname $(readlink -f $0))

####    Vim Setup
cp .vimrc ~/
cp -R .vim ~/

########    Essential Plugin: Vundle
if [ "$(ls -A ~/.vim/bundle/Vundle.vim)" ]; then
    echo "Vundle is already installed"
else
    echo "Vundle is not found. Install vundle..."
    mkdir -p ~/.vim/bundle
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

vim +PluginInstall +qall

####    Git Setup
cp .gitconfig ~/

####    Terminal Markdown Viewer Setup
#CentOS/RHEL 7
#sudo yum install -y python python-pip
#sudo pip install markdown pygments pyyaml
#git clone https://github.com/axiros/terminal_markdown_viewer.git

####    Bash Setup
cp .profile ~/
cp .bashrc ~/
