FROM git-ubuntu:18.04 AS emacs-ubuntu
LABEL version='18.04'
LABEL author='Jongho Kim'

ENV TERM=xterm-256color

RUN apt-get install -y software-properties-common; apt-add-repository ppa:kelleyk/emacs; apt update; apt install -y emacs27

# Alias for emacs
RUN echo "alias emacs='emacs -nw'" >> /root/.bashrc
