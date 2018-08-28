FROM jenkins/jenkins:lts-alpine

MAINTAINER Jeromy Van Dusen <jeromy.vandusen@gmail.com>

USER root
RUN echo http://dl-cdn.alpinelinux.org/alpine/edge/community >> /etc/apk/repositories && \
    apk update && \
    apk add docker && \
    apk add openrc && \
    rc-update add docker boot && \
    apk del openrc && \
    rm -rf /var/cache/apk/*
