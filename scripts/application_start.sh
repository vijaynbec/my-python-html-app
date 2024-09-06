#!/bin/bash

echo "Running container..."
# docker ps -a
# docker stop flask_app || true
# docker rm flask_app || true
docker run --name flask_app -d -p 5000:5000 426924142575.dkr.ecr.us-east-1.amazonaws.com/flask_image:latest
