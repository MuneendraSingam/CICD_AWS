#!/bin/bash
set -e

# Define the image name
IMAGE_NAME="muneendrasingam/python-flask-app"

# Pull the Docker image from Docker Hub
docker pull $IMAGE_NAME

# Run the Docker image as a container
docker run -d -p 5000:5000 $IMAGE_NAME


