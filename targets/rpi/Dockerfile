FROM arm32v7/debian:stretch-slim
MAINTAINER Michael Ruettgers <michael@ruettgers.eu>

ENV LC_ALL C.UTF-8
ENV DEBIAN_FRONTEND noninteractive

COPY .build/arm-unknown-linux-gnueabihf/release/librespot /usr/local/bin/

COPY ../../files/ /

ENTRYPOINT ["/docker/docker-entrypoint.sh"]