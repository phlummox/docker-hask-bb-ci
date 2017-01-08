#!/usr/bin/env bash

set -x

docker login -u $DOCKER_USER -p $DOCKER_PASSWORD
docker tag $REPO:$COMMIT $REPO:$DOCKER_TAG
docker tag $REPO:$COMMIT $REPO:travis-$TRAVIS_BUILD_NUMBER
docker tag $REPO:$COMMIT $REPO:latest
docker push $REPO

