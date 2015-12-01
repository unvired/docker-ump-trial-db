FROM ubuntu:14.04
MAINTAINER Unvired <support@unvired.io>

RUN apt-get update -yqq \
    && mkdir -p /var/unvired/UMP/db \
    && mkdir -p /var/unvired/common/pa/config \
    && mkdir -p /var/unvired/common/pa/UNVIRED.APP482129901084 \
    && mkdir -p /var/unvired/common/pa/Revision/UNVIRED.APP482129901084/1 \
    && mkdir -p /var/unvired/common/unvired \
    && mkdir -p /var/unvired/common/keystore/PK12_FILE_FOLDER/UNVIRED

LABEL vendor="Unvired Inc." \
      com.unvired.UMP.module="DATA" \
      com.unvired.UMP.release="1.0.1" \
      com.unvired.UMP.release-date="1-Dec-2015"

# The required files - UMP db, Quartz db, demo company key, PA

RUN wget -q --no-check-certificate -O/var/unvired/UMP/db/UMP-platform.h2.db https://www.dropbox.com/s/fv6r0y6xp7y1lie/ump-platform.h2.db
RUN wget -q --no-check-certificate -O/var/unvired/UMP/db/quartz.h2.db https://www.dropbox.com/s/ignth2p4meyula0/quartz.h2.db
RUN wget -q --no-check-certificate -O/var/unvired/common/keystore/PK12_FILE_FOLDER/UNVIRED/UNVIRED_keystore.p12 
RUN wget -q --no-check-certificate -O/var/unvired/common/pa/config/quartz.properties https://www.dropbox.com/s/qn750kin1f1etqj/quartz.properties
RUN wget -q --no-check-certificate -O/var/unvired/common/pa/Revision/UNVIRED.APP482129901084/1/UNVIRED_SAP_CUSTOMER_SEARCH.jar https://www.dropbox.com/s/gm9xby7xod66jke/UNVIRED_SAP_CUSTOMER_SEARCH.jar
RUN wget -q --no-check-certificate -O/var/unvired/common/pa/UNVIRED.APP482129901084/UNVIRED_SAP_CUSTOMER_SEARCH.jar https://www.dropbox.com/s/gm9xby7xod66jke/UNVIRED_SAP_CUSTOMER_SEARCH.jar

# Create /var/unvired volume
VOLUME /var/unvired