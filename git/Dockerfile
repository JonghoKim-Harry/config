FROM ubuntu:18.04 AS git-image

RUN apt-get update; apt-get install -y git git-crypt

COPY .gitattributes /root
COPY .gitconfig /root
