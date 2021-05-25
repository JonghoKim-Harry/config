#!/bin/bash
sudo apt-get install -y language-pack-ko
sudo locale-gen ko_KR.UTF-8
sudo dpkg-reconfigure locales
sudo update-locale LANG=ko_KR.UTF-8 LC_MESSAGES=POSIX

# Note that updated locale will be applied after reboot
