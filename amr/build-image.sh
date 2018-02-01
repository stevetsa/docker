#!/bin/bash

USERNAME=ncbi
IMAGE=amr
VERSION=`cat VERSION`

docker build --build-arg VERSION=${VERSION} -t $USERNAME/$IMAGE:$VERSION . \
    && docker tag $USERNAME/$IMAGE:$VERSION $USERNAME/$IMAGE:latest
