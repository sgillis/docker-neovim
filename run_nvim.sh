#! /bin/bash

docker run \
    -it --rm \
    -v /Users/sgillis/git/docker-neovim/nvim/plugged:/root/.nvim/plugged \
    -v /Users/sgillis:/Users/sgillis \
    nvim "$(pwd)/$@"
