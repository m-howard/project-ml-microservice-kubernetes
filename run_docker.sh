#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
docker build --tag=ml-kube-microservice .

# Step 2: 
docker image ls

# Step 3: 
docker run --name udacity-project5 -p 8000:80 ml-kube-microservice
