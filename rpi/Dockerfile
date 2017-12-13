FROM arm32v7/debian:stretch-slim
MAINTAINER Michael Ruettgers <michael@ruettgers.eu>

ENV LC_ALL C.UTF-8
ENV DEBIAN_FRONTEND noninteractive

ENV PIPE /tmp/spotify-pipe

COPY .build/arm-unknown-linux-gnueabihf/release/librespot /usr/local/bin/

CMD ["librespot", "--device \"$PIPE\"", "-n \"$SPOTIFY_DEVICENAME\"", "-u \"$SPOTIFY_USERNAME\"", "-p \"$SPOTIFY_PASSWORD\""]