#!/bin/bash

if [[ ! -d "./docker" ]]; then
    echo "Failed to find docker settings."
    exit 1
fi
if [[ -z "$1" ]]; then
  TARGET="ALL"
else
  TARGET="$1"
fi

if [[ ${TARGET} = '14' || ${TARGET} = 'ALL' ]]; then
  printf "FROM node:14-alpine\n\n"              > "${PWD}"/docker/node/14/Dockerfile && \
  cat "${PWD}"/src/layers/node/apk-add.txt     >> "${PWD}"/docker/node/14/Dockerfile && \
  cat "${PWD}"/src/layers/node/npm-install.txt >> "${PWD}"/docker/node/14/Dockerfile
fi
