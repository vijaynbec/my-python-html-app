#!/bin/bash

# Check if Docker is installed
if ! command -v docker &> /dev/null; then
    echo "Docker not found. Installing Docker..."
    sudo apt-get update -y
    sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
    sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
    sudo apt-get install -y docker-ce

    # Start Docker
    sudo systemctl start docker
    sudo systemctl enable docker
    sudo systemctl status docker
    

    # Add the current user to Docker group
    sudo usermod -aG docker ubuntu
    echo "Docker installed successfully."
fi
    echo "Docker Found"

if ! command -v aws &>/dev/null; then
    echo "AWS CLI not found. Installing AWS CLI..."
    # sudo apt-get update -y
    # sudo apt-get install awscli -y
    curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
    unzip awscliv2.zip
    sudo ./aws/install
    sudo apt install nginx
    # aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 426924142575.dkr.ecr.us-east-1.amazonaws.com
	
fi
    echo "AWS CLI is already installed."
