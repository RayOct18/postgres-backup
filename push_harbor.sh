#!/bin/bash
TAG=$1
if [ -z $TAG ]; then
  echo "TAG is required"
  exit 1
fi
HOST=harbor.mouthird.com
docker login ${HOST}
NAME=${HOST}/project/postgres-backup
docker buildx build --platform linux/arm64,linux/amd64 --push --build-arg TAG=${TAG} -t ${NAME}:${TAG} .