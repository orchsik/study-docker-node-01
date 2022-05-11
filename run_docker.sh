#!/bin/bash

docker run \
  -it --rm -d \
  --name node-docker
  --publish 8000:8000 \
  node-docker