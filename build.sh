#!/bin/bash
set -e  # Exit immediately if a command exits with a non-zero status

# Variables
VERSION="0.999901"
BACKEND_IMAGE="magnemyr/martes-nginx"


# Build and push backend image with two tags (latest and version number)
docker build --no-cache -f ./dockerfile -t "$BACKEND_IMAGE:latest" -t "$BACKEND_IMAGE:$VERSION" .
docker push "$BACKEND_IMAGE:latest"
docker push "$BACKEND_IMAGE:$VERSION"