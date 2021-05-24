!/usr/bin/env bash

# Build image and add tag
docker build . --tag=ml-microservice

# List images
docker image ls

# Run App
docker run -p 8000:80 ml-microservice