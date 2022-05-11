#!/bin/bash

docker run \
  -it --rm -d \
  --network mongodb \
  --name rest-server  \
  --publish 8000:8000 \
  -e CONNECTIONSTRING=mongodb://mongodb:27017/notes \
  rest-server