# Docker Jenkins Image

A custom Docker image for Jenkins. This image is based on the latest version of the official Jenkins lts-alpine image,
which can be found [here](https://hub.docker.com/r/jenkins/jenkins/). This image is extended to add a Docker daemon so that
Jenkins pipelines can be used to build and maintain Docker images.

## Usage

When starting the container, you will need to mount the Docker socket, and also optionally an external data directory.

```
$ docker run -d \
             -p 8080:8080 \
             -v /var/run/docker.sock:/var/run/docker.sock \
             -v /my/local/data/directory:/var/jenkins_home \
             --name jenkins
             jvandusen/docker-jenkins:latest
```

A similar configuration using a `docker-compose.yml` file would look like this:

```
version: "3"

services:
  jenkins:
    image: jvandusen/docker-jenkins:latest
    container_name: jenkins
    ports:
    - "8080:8080"
    volumes:
    - "/var/run/docker.sock:/var/run/docker.sock"
    - "/my/local/data/directory:/var/jenkins_home"
```
