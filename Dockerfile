FROM ackee/gitlab-ci-utils:latest

RUN apk add --no-cache \
        python3 \
        py3-pip \
    && pip3 install --upgrade pip \
    && pip3 install \
        awscli \
    && rm -rf /var/cache/apk/*

COPY scripts/helper_functions.sh /usr/local/bin/helper_functions.sh

