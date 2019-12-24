#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 0 : Login
docker login
docker tag 

# Step 1:
# Create dockerpath
dockerpath=~/.final

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"

# Step 3:
# Push image to a docker repository
docker push doofus909/udacity:app
