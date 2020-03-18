FROM debian:stable

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -y && apt-get upgrade -y && \
    apt-get install -y --no-install-recommends apt-utils \
	git \
	openssh-client \
	openssh-server \
	curl \
	gcc \
	g++ \
	clang \
	build-essential \
	cmake \
	unzip \
	tar \
	gzip \
	sudo \
	ca-certificates

RUN apt-get autoclean && \
    apt-get autoremove && \
    apt-get clean

ENV VCPKG_ROOT /vcpkg
ENV CMAKE_TOOLCHAIN_FILE ${VCPKG_ROOT}/scripts/buildsystems/vcpkg.cmake

RUN git clone https://github.com/microsoft/vcpkg.git && \
	.${VCPKG_ROOT}/bootstrap-vcpkg.sh -disableMetrics && \
	sudo .${VCPKG_ROOT}/vcpkg integrate install

ENV DEBIAN_FRONTEND teletype
	
