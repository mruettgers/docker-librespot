FROM alpine:3.7

ENV PACKAGES \
	libgcc \
	llvm-libunwind

ENV BUILD_PACKAGES \
	git \
	cargo \
	portaudio-dev \
	protobuf-dev

RUN apk -U --no-cache add ${BUILD_PACKAGES} ${PACKAGES} && \
	cd /tmp && \
	git clone --depth=1 https://github.com/librespot-org/librespot.git && \
	cd librespot && \
	cargo build --jobs $(grep -c ^processor /proc/cpuinfo) --release --no-default-features && \
	cp target/release/librespot /usr/local/bin/ && \
 	apk --no-cache --purge del ${BUILD_PACKAGES} && \
	cd /tmp && \
	rm -rf /tmp/librespot

COPY ../../files/ /

ENTRYPOINT ["/docker/docker-entrypoint.sh"]