FROM ubuntu:latest

ENV LC_ALL C.UTF-8
ENV DEBIAN_FRONTEND noninteractive

ENV PACKAGES \
	libportaudio2

ENV BUILD_PACKAGES \
	git \
	build-essential \
	rustc \
	cargo \
	portaudio19-dev

RUN apt-get update && \
	apt-get install -y ${BUILD_PACKAGES} ${PACKAGES} && \
	cd /tmp && \
	git clone --depth=1 https://github.com/librespot-org/librespot.git && \
	cd librespot && \
	cargo build --release && \
	cp target/release/librespot /usr/local/bin/ && \
	apt-get purge -y ${BUILD_PACKAGES} && \
	apt-get autoremove -y && \
	apt-get clean && \
	cd /tmp && \
	rm -rf /tmp/librespot

CMD ["librespot"]