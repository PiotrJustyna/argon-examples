#!/bin/zsh

CERTIFICATE_DIRECTORY="$HOME/.ssh/"

docker build \
  -t "argon:4-hello-world-argon-base" \
  -f "dockerfile" \
  . \
&& \
docker run \
  -it \
  -v "$(pwd)/..:/tmp/code" \
  -v "$HOME/.ssh/:/root/.ssh:ro" \
  -w "/tmp/code/4-hello-world-argon-base" \
  --rm "argon:4-hello-world-argon-base"