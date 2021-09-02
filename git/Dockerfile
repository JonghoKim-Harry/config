FROM shell-ubuntu:18.04 AS git-ubuntu
LABEL version='18.04'
LABEL author='Jongho Kim'

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update; apt-get install -y --no-install-recommends apt-utils; apt-get install -y git git-crypt

COPY .gitattributes /root
COPY .gitconfig /root
