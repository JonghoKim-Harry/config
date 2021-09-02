FROM ubuntu:18.04 AS git-ubuntu
LABEL version='18.04'
LABEL author='Jongho Kim'

RUN apt-get update; apt-get install -y git git-crypt

COPY .gitattributes /root
COPY .gitconfig /root
