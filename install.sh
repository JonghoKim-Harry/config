##    Package Installation
if command -v apt-get > /dev/null; then #   Ubuntu
    sudo apt-get install -y git vim ruby
elif command -v yum > /dev/null; then   #   CentOS / RHEL
    sudo yum install -y wget
    sudo yum install -y git vim-enhanced ruby
fi

##    SETUP: Vim, Git, Bash
cd $(dirname $(readlink -f $0))
cp .vimrc ~/
cp -R .vim ~/
cp .gitconfig ~/
cp .profile ~/
cp .bashrc ~/

####    Essential Vim Plugin: Vundle
if [ "$(ls -A ~/.vim/bundle/Vundle.vim)" ]; then
    echo "Vundle is already installed"
else
    echo "Vundle is not found. Install vundle..."
    mkdir -p ~/.vim/bundle
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

vim +PluginInstall +qall

####    Terminal Markdown Viewer Setup
#CentOS/RHEL 7
#sudo yum install -y python python-pip
#sudo pip install markdown pygments pyyaml
#git clone https://github.com/axiros/terminal_markdown_viewer.git
