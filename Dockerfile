FROM debian:stable

RUN apt-get update -y && apt-get upgrade -y && \
    apt-get install -y --no-install-recommends git \
	curl \
	gcc \
	g++ \
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

RUN ./vcpkg/vcpkg install doctest \
	fmt

RUN rm -r /vcpkg/downloads && \
	rm -r /vcpkg/buildtrees

RUN export CMAKE_TOOLCHAIN_FILE="/vcpkg/scripts/buildsystems/vcpkg.cmake"
	
