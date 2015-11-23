FROM ubuntu:14.04
MAINTAINER Unvired <support@unvired.io>

RUN apt-get update -yqq \
    && mkdir -p /var/umpdata/db \
    && mkdir -p /var/umpdata/home

ENV UMPDATA_VERSION 1.0.0

# Create /umpdata volume
VOLUME /umpdata