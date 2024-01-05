#!/bin/zsh

docker run \
  -it \
  -v "$(pwd)/..:/tmp/code" \
  -v "$HOME/.ssh/:/root/.ssh:ro" \
  -w "/tmp/code/1-markdown" \
  --rm "piotrjustyna/argon:latest"