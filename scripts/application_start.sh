#!/bin/bash

echo "Running container..."
docker run --name flask_app -d -p 5000:5000 426924142575.dkr.ecr.us-east-1.amazonaws.com/flask_image:latest
# #!/bin/bash

# # Authenticate Docker to ECR
# echo "Authenticating Docker to ECR..."
# aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 426924142575.dkr.ecr.us-east-1.amazonaws.com

# # Pull the Docker image
# echo "Pulling Docker image..."
# docker pull 426924142575.dkr.ecr.us-east-1.amazonaws.com/flask_image:latest

# # Run the Docker container
# echo "Running Docker container..."
# docker run -d -p 80:80 426924142575.dkr.ecr.us-east-1.amazonaws.com/flask_image:latest

