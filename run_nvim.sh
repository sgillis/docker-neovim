#! /bin/bash

docker run \
    -it --rm \
    -v /Users/sgillis/git/docker-neovim/nvim/plugged:/root/.nvim/plugged \
    -v /Users/sgillis:/Users/sgillis \
    -e DOCKER_HOST=tcp://10.2.0.10:4243 \
    nvim "$(pwd)/$@"
