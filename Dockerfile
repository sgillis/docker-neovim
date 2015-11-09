FROM ubuntu:14.04

RUN apt-get update
RUN apt-get install -y python-software-properties software-properties-common
RUN add-apt-repository ppa:neovim-ppa/unstable
RUN apt-get update
RUN apt-get install -y \
    python-dev python-pip python3-dev python3-pip neovim git wget fontconfig
RUN apt-get install -y apt-transport-https
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 36A1D7869245C8950F966E92D8576A8BA88D21E9
RUN echo deb https://get.docker.io/ubuntu docker main > /etc/apt/sources.list.d/docker.list
RUN apt-get update
RUN apt-get install -y lxc-docker

ADD nvimrc /root/.nvimrc
ADD plug.vim /root/.nvim/autoload/plug.vim
ADD molokai.vim /root/.nvim/colors/molokai.vim
ADD bin/hdevtools /usr/local/bin/hdevtools
ADD bin/pylint /usr/local/bin/pylint
# RUN pip install pylint

ENV TERM xterm-256color

ENTRYPOINT ["nvim"]
