FROM ubuntu:18.04 AS shell-ubuntu
LABEL version='18.04'
LABEL author='Jongho Kim'

ENV DEBIAN_FRONTEND noninteractive

COPY .bashrc /root
ENV TERM xterm-256color
#RUN echo "export TERM='xterm-256coor'" >> /root/.bashrc; source /root/.bashrc
