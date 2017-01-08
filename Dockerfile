FROM ubuntu:16.04
MAINTAINER tumf <y.takahara@gmail.com>
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update &&\
    apt-get install -y npm curl &&\
    apt-get clean &&\
    apt-get autoremove -y &&\
    rm -rf /var/cache/apt/*
RUN npm -g install n
RUN n stable
RUN ln -sf /usr/local/bin/node /usr/bin/node
RUN apt-get purge -y nodejs npm
