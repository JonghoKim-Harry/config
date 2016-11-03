##    Package Installation
if [ -e /etc/debian_version ]; then     #   Debian
    
    sudo apt-get update
    sudo apt-get install -y git vim ruby ctags
 
    # Install lrzsz (ZMODEM)
    sudo apt-get install -y lrzsz

    # Install prerequisites for gem5
    sudo apt-get install -y git build-essential g++ zlib1g-dev scons m4 swig python-dev

    # ARM toolchain
    sudo apt-get install -y gcc-arm-linux-gnueabi

elif command -v yum > /dev/null; then   #   CentOS / RHEL
    sudo yum update -y
    sudo yum install -y wget
    sudo yum install -y git vim-enhanced ruby ctags
fi

WHERE_AM_I=$(dirname $(readlink -f $0))
source $WHERE_AM_I/script/setup_vim.sh
source $WHERE_AM_I/script/setup_git.sh
source $WHERE_AM_I/script/setup_bash.sh

####    Terminal Markdown Viewer Setup
#CentOS/RHEL 7
#sudo yum install -y python python-pip
#sudo pip install markdown pygments pyyaml
#git clone https://github.com/axiros/terminal_markdown_viewer.git
#if command -v apt-get > /dev/null; then #   Ubuntu
#elif command -v yum > /dev/null; then   #   CentOS / RHEL
