FROM ubuntu:18.04
LABEL author='Jongho Kim'

# Tibero6
ENV TB_HOME=/etc/tibero/tibero6
ENV TB_SID=tibero
ENV TB_PROF_DIR=$TB_HOME/bin/prof
ENV PATH=$PATH:$TB_HOME/bin:$TB_HOME/client/bin
RUN alias tbsql='rlwrap tbsql'
RUN echo "alias tbsql='rlwrap tbsql'" >> ~/.bashrc
