[![CircleCI](https://circleci.com/gh/m-howard/project-ml-microservice-kubernetes/tree/master.svg?style=svg)](https://circleci.com/gh/m-howard/project-ml-microservice-kubernetes/tree/master)

## Project Overview

In this project, using a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston, I operationalize a Python flask app using Docker and Kubernetes.

---

## Files

* app.py - Flask microservice app containing pretrained model for predicting houseing prices in Boston.
* requirements.txt - Contains list of python modules the app needs installed to run properly.
* Makefile - utility file which defines a set of tasks to be run to build/test the application.
* Dockerfile - Dockerfile to build containerized environment for the application.
* run_docker.sh - Script to build and run the application inside a docker container.
* upload_docker.sh - Script to upload Docker image to Docker repository.
* run_kubernetes.sh - Script to pull application Docker image to deploy to Kubernetes cluster.
* make_prediction.sh - Script to send request to deployed application to make a prediction.
* .circleci/config.yml - CicleCI configuration file for config CI process.

### Running `app.py`

1. Standalone:  `python app.py`
2. Run app task: `make [setup|install|test|lint|all]`
3. Run in Docker:  `./run_docker.sh`
4. Upload Docker image: `./upload_docker.sh`
5. Run in Kubernetes:  `./run_kubernetes.sh`
