FROM ubuntu:focal
LABEL maintainer="luisan00 <luisan00@hotmail.com>"

SHELL ["/bin/bash", "-c"]

RUN echo 'Update the package index files to latest available versions' >&2 && \
    apt update

RUN echo 'Install GCC and other stuffs' >&2 && \
    DEBIAN_FRONTEND=noninteractive TZ=Etc/UTC apt install -y \
    git \
     \
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
    DEBIAN_FRONTEND=noninteractive TZ=Etc/UTC apt install -y \
    gcc-arm-none-eabi

RUN echo 'Installing extensa toolchain and related stuffs' >&2 && \
    mkdir -p $HOME/esp && \
    cd $HOME/esp && \
    git clone https://github.com/gschorcht/xtensa-esp32-elf.git && \
    export PATH=$PATH:$HOME/esp/xtensa-esp32-elf/bin

RUN echo 'Installation of ESP-IDF (Espressif IoT Development Framework)' >&2 && \
    cd $HOME/esp && \
    git clone https://github.com/espressif/esp-idf.git && \
    cd esp-idf && \
    git checkout f198339ec09e90666150672884535802304d23ec && \
    git submodule init && \
    git submodule update && \
    export ESP32_SDK_DIR=$HOME/esp/esp-idf

RUN echo 'Installing openocd' >&2 && \
    DEBIAN_FRONTEND=noninteractive TZ=Etc/UTC apt install -y \
    openocd

RUN echo 'Clean up installation files' >&2 && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

COPY 60-openocd.rules /etc/udev/rules.d/60-openocd.rules

# Copy our entry point script (signal wrapper)
COPY run.sh /run.sh

ENTRYPOINT ["/bin/bash", "/run.sh"]
