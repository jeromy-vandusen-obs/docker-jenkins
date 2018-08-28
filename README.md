# Docker Jenkins Image

A custom Docker image for Jenkins. This image is based on the version 2.140 of the official Jenkins lts-alpine image,
which can be found [here](https://hub.docker.com/r/jenkins/jenkins/). This image is extended to add a Docker daemon so that
Jenkins pipelines can be used to build and maintain Docker images.
