# Mesh4all build base 

Creates a docker image based on Ubuntu `22.04 LTS` with codename `Jammy Jellyfish` ready to be used by our Luke Skywalker worker

## Base system and tools

| Name             | Version | Origin |
|------------------|---------|--------|
| Ubuntu           | 22.04   | Ubuntu |
| git              | 2.34.1  | "      |
| build-essential  | 12.9    | "      |
| pkg-config       | 0.29.2  | "      |
| make             | 4.3     | "      |
| autoconf         | 2.71    | "      |
| automake         | 1.16.5  | "      |
| gcc-multilib     | 11.2.0  | "      |
| g++-multilib     | "       | "      |
| gdb-multiarch    | 12.1    | "      |
| wget             | 1.21.2  | "      |
| curl             | 7.81.0  | "      |
| unzip            | 6.0     | "      |
| p7zip            | 16.02   | "      |
| python3          | 3.10.6  | "      |
| python3-dev      | "       | "      |
| python3-serial   | 3.5     | "      |
| libtool          | 2.4.6   | "      |
| libusb-dev       | 0.1.12  | "      |
| libudev-dev      | 249.11  | "      |
| libusb-1.0-0-dev | 1.0.25  | "      |
| libhidapi-dev    | 0.11.2  | "      |
| libftdi-dev      | 0.20    | "      |
| openocd          | 0.11.1  | "      |


## Available toolchains

| Name              | Version        | Origin                                        |
|-------------------|----------------|-----------------------------------------------|
| gcc-arm-none-eabi | 10.3-2021.07-4 | Ubuntu                                        |
| xtensa-esp32-elf  | gcc-5.2.0      | https://github.com/gschorcht/xtensa-esp32-elf |

## SDKs

| Name    | Version   | Origin |
|---------|-----------|-----------|
| esp-idf | v4.4.2 (1b16ef6cfc2479a08136782f9dc57effefa86f66)   | [Espressif](https://github.com/espressif/esp-idf) |

```