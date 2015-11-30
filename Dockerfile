FROM ubuntu:14.04
MAINTAINER Unvired <support@unvired.io>

RUN apt-get update -yqq \
    && mkdir -p /var/unvired/UMP/db \
    && mkdir -p /var/unvired/UMP/home \
    && mkdir -p /var/unvired/common/pa/config \
    && mkdir -p /var/unvired/common/unvired \
    && mkdir -p /var/unvired/common/keystore/PK12_FILE_FOLDER/UNVIRED

LABEL vendor="Unvired Inc." \
      com.unvired.UMP.module="DATA" \
      com.unvired.UMP.release="1.0.0" \
      com.unvired.UMP.release-date="29-Nov-2015"

# Create /var/unvired volume
VOLUME /var/unvired