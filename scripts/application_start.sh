#!/bin/bash

# Variables
IMAGE_NAME="426924142575.dkr.ecr.us-east-1.amazonaws.com/flask_image:latest"
CONTAINER_NAME="flask_app"
PORT_MAPPING="5000:5000"

echo "Checking Docker service..."
sudo systemctl status docker || { echo "Docker service is not running."; exit 1; }

echo "Pulling Docker image..."
docker pull $IMAGE_NAME
if [ $? -ne 0 ]; then
  echo "Error: Failed to pull Docker image $IMAGE_NAME."
  exit 1
fi

echo "Stopping and removing existing container..."
docker stop $CONTAINER_NAME || true
docker rm $CONTAINER_NAME || true

echo "Running Docker container..."
docker run --name $CONTAINER_NAME -d -p $PORT_MAPPING $IMAGE_NAME
if [ $? -ne 0 ]; then
  echo "Error: Failed to start Docker container $CONTAINER_NAME."
  exit 1
fi

echo "Docker container started successfully."
