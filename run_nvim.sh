#! /bin/bash

docker run \
    -it --rm \
    --name nvim \
    -v /Users/sgillis/git/docker-neovim/nvim/plugged:/root/.nvim/plugged \
    -v /Users/sgillis:/Users/sgillis \
    nvim "$(pwd)/$@"
