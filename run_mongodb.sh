#!/bin/bash

docker run \
  -it --rm -d \
  --network mongodb \
  --name mongodb \
  -v mongodb:/data/db \ 
  mongodb