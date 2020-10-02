FROM alpine:3.12.0

RUN echo "@community https://nl.alpinelinux.org/alpine/v3.12/community" >> /etc/apk/repositories \
 && apk -U upgrade \
 && apk add openssl \
    wget \
    rsync \
 && wget https://github.com/mikefarah/yq/releases/download/$YQ_VER/yq_linux_amd64 -O /usr/bin/yq &&\
    chmod +x /usr/bin/yq
