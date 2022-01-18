# Mesh4all build base 

Creates a docker image ready to be used by our Skywalker worker

## Base system and tools

| Name             | Version | Origin |
|------------------|---------|--------|
| Ubuntu           | 20.04   | Ubuntu |
| git              | 2.25.1  | "      |
| build-essential  | 12.8    | "      |
| pkg-config       | 0.29.1  | "      |
| make             | 4.2.1   | "      |
| autoconf         | 2.69    | "      |
| automake         | 1.16.1  | "      |
| gcc-multilib     | 9.3.0   | "      |
| g++-multilib     | "       | "      |
| gdb-multiarch    | 9.2     | "      |
| wget             | 1.20.3  | "      |
| curl             | 7.68.0  | "      |
| unzip            | 6.00    | "      |
| p7zip            | 16.02   | "      |
| python3          | 3.8.10  | "      |
| python3-dev      | 3.8.2   | "      |
| python3-serial   | 3.4.5   | "      |
| libtool          | 2.4.6   | "      |
| libusb-dev       | 0.1.12  | "      |
| libudev-dev      | 245.4   | "      |
| libusb-1.0-0-dev | 1.0.23  | "      |
| libhidapi-dev    | 0.9.0   | "      |
| libftdi-dev      | 0.20    | "      |
| openocd          | 0.11.0  | "      |

## Available toolchains

| Name              | Version   | Origin |
|-------------------|-----------|--------|
| gcc-arm-none-eabi | 9-2019-q4 | Ubuntu |
| xtensa-esp32-elf  | V3        | https://github.com/gschorcht/xtensa-esp32-elf |

## SDKs

| Name    | Version | Origin |
|---------|-----------|-----------|
| esp-idf | checkout: f198339ec09e90666150672884535802304d23ec | [Espressif](https://github.com/espressif/esp-idf) |

```