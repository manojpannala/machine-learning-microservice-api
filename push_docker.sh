#!/usr/bin/env bash

dockerpath=manojpannala/ml-microservice

echo "Docker ID and Image: $dockerpath"

docker login --username manojpannala
docker tag ml-microservice manojpannala/ml-microservice:latest

docker push manojpannala/ml-microservice:latest