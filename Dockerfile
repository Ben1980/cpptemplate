FROM debian:stable

RUN apt-get update -y && apt-get upgrade -y && \
    apt-get install -y --no-install-recommends git \
	openssh-client \
	curl \
	gcc \
	g++ \
	clang \
	build-essential \
	cmake \
	unzip \
	tar \
	sudo \
	ca-certificates \
	&& \
    apt-get autoclean && \
    apt-get autoremove && \
    apt-get clean

RUN git clone https://github.com/microsoft/vcpkg.git && \
	./vcpkg/bootstrap-vcpkg.sh && \
	sudo ./vcpkg/vcpkg integrate install

ENV VCPKG_ROOT /vcpkg
ENV CMAKE_TOOLCHAIN_FILE /vcpkg/scripts/buildsystems/vcpkg.cmake

	
