FROM arm64v8/debian:stretch-slim
MAINTAINER Michael Ruettgers <michael@ruettgers.eu>

ENV LC_ALL C.UTF-8
ENV DEBIAN_FRONTEND noninteractive

ENV PIPE /tmp/spotify-pipe

COPY .build/aarch64-unknown-linux-gnu/release/librespot /usr/local/bin/

CMD ["librespot", "--device \"$PIPE\"", "-n \"$SPOTIFY_DEVICENAME\"", "-u \"$SPOTIFY_USERNAME\"", "-p \"$SPOTIFY_PASSWORD\""]