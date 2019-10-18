#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=mhoward22/ml-kube-microservice

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
cat ./docker-creds.txt | docker login --username mhoward22 --password-stdin
docker tag ml-kube-microservice $dockerpath

# Step 3:
# Push image to a docker repository
docker push $dockerpath
