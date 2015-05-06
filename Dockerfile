FROM ubuntu:14.04

RUN apt-get update
RUN apt-get install -y python-software-properties software-properties-common
RUN add-apt-repository ppa:neovim-ppa/unstable
RUN apt-get update
RUN apt-get install -y \
    python-dev python-pip python3-dev python3-pip neovim git wget fontconfig

ADD nvimrc /root/.nvimrc
ADD plug.vim /root/.nvim/autoload/plug.vim
ADD molokai.vim /root/.nvim/colors/molokai.vim

ENV TERM xterm-256color

ENTRYPOINT ["nvim"]
