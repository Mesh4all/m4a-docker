# Mesh4all build base 

Creates a docker image based on Ubuntu `22.04 LTS` with codename `Jammy Jellyfish` ready to be used by our Skywalker worker

## Base system and tools

| Name             | Version | Origin |
|------------------|---------|--------|
| Ubuntu           | 22.04   | Ubuntu |


## Available toolchains

| Name              | Version        | Origin                                        |
|-------------------|----------------|-----------------------------------------------|
| gcc-arm-none-eabi | 10.3-2021.07-4 | Ubuntu                                        |
| xtensa-esp32-elf  | V?             | https://github.com/gschorcht/xtensa-esp32-elf |

## SDKs

| Name    | Version | Origin |
|---------|-----------|-----------|
| esp-idf | checkout: f198339ec09e90666150672884535802304d23ec | [Espressif](https://github.com/espressif/esp-idf) |

```