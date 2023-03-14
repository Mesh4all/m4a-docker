FROM ubuntu:jammy
LABEL maintainer="luisan00 <luisan00@hotmail.com>"

ENV DEBIAN_FRONTEND noninteractive
ENV TZ Etc/UTC

SHELL ["/bin/bash", "-c"]

RUN echo 'Update the package index files to latest available versions' >&2 && \
    apt update

RUN echo 'Install GCC and other stuffs' >&2 && \
    apt install -y \
    git \
    build-essential \
    pkg-config \
    make \
    autoconf \
    automake \
    gcc-multilib \
    g++-multilib \
    gdb-multiarch \
    wget \
    curl\
    unzip \
    p7zip \
    python3 \
    python3-dev\
    python3-serial \
    libtool \
    libusb-dev \
    libudev-dev \
    libusb-1.0-0-dev \
    libhidapi-dev \
    libftdi-dev

RUN echo 'Installing ARM toolchain' >&2 && \
    apt install -y gcc-arm-none-eabi

RUN echo 'Installing openocd' >&2 && \
    apt install -y openocd

RUN echo 'Clean up installation files' >&2 && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN echo 'Installing extensa toolchain and related stuffs' >&2 && \
    mkdir -p /opt/esp && \
    cd /opt/esp && \
    git clone https://github.com/gschorcht/xtensa-esp32-elf.git && \
    cd xtensa-esp32-elf && \
    git checkout -q 414d1f3a577702e927973bd906357ee00d7a6c6c

ENV PATH $PATH:/opt/esp/xtensa-esp32-elf/bin

RUN echo 'Installation of ESP-IDF (Espressif IoT Development Framework)' >&2 && \
    cd /opt/esp && \
    git clone https://github.com/espressif/esp-idf.git && \
    cd esp-idf && \
    git checkout -q f198339ec09e90666150672884535802304d23ec && \
    git submodule update --init --recursive

ENV ESP32_SDK_DIR /opt/esp/esp-idf

COPY 60-openocd.rules /etc/udev/rules.d/60-openocd.rules

COPY run.sh /run.sh

ENTRYPOINT ["/bin/bash", "/run.sh"]
