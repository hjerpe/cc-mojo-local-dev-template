#!/bin/bash

# stop on error
set -e
source docker-name.sh

docker build --no-cache \
   --build-arg AUTH_KEY=<your-modular-auth-key>
   --pull -t modular/mojo-v0.2-`date '+%Y%d%m-%H%M'` \
   --file Dockerfile.mojosdk
   --tag "$image_name" .