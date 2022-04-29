#!/usr/bin/env bash

REPO=localhost
APP=jibber
TYPE=native
VER=0.0.1
CONTAINER=${REPO}/${APP}:${TYPE}.${VER}
APP_FILE=jibber
echo "Container : ${CONTAINER}"
native-image --version

echo "Building native executable..."
mvn clean package -DskipTests -Pnative
echo "DONE"

echo "Dockerizing our app.."
docker login container-registry.oracle.com
docker build -f ./Dockerfiles/Dockerfile.native \
             --build-arg APP_FILE=${APP_FILE} \
             -t ${CONTAINER} .
echo "DONE"
