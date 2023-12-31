#!/bin/zsh

docker run \
  -it \
  -v "$(pwd)/..:/tmp/code" \
  -v "$HOME/.ssh/:/root/.ssh:ro" \
  -w "/tmp/code/2-hello-world" \
  --rm "piotrjustyna/argon:latest"