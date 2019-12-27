FROM alpine

ENV PACKAGES \
	libgcc \
	llvm-libunwind \
	libpulse 

ENV BUILD_PACKAGES \
	git \
	cargo \
	portaudio-dev \
	protobuf-dev \
	pulseaudio-dev

RUN apk -U --no-cache add ${BUILD_PACKAGES} ${PACKAGES} && \
	cd /tmp && \
	git clone --depth=1 https://github.com/librespot-org/librespot.git && \
	cd librespot && \
	cargo build --jobs $(grep -c ^processor /proc/cpuinfo) --release --no-default-features --features pulseaudio-backend && \
	cp target/release/librespot /usr/local/bin/ && \
 	apk --no-cache --purge del ${BUILD_PACKAGES} && \
	cd /tmp && \
	rm -rf /tmp/librespot && \
	rm -rf ~/.cargo/


CMD ["librespot"]
