FROM emacs-ubuntu:18.04 AS spacemacs-ubuntu
LABEL version='18.04'
LABEL author='Jongho Kim'

COPY .spacemacs /root
RUN git clone https://github.com/syl20bnr/spacemacs /root/.emacs.d
RUN emacs --daemon --debug-init --eval "(kill-emacs))"   || true
