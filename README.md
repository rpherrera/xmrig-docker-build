# High Performance Monero (XMR) CPU Miner

## Description

Docker builds for [High Performance Monero (XMR) CPU Miner](https://github.com/xmrig/xmrig).

Provides different Docker Images with multiple building variants regarding to some CMake Flags combined:

* `WITH_AEON`: ON/OFF

* `WITH_HTTPD`: ON/OFF

* `WITH_LIBCPUID`: ON/OFF

Features some wrappers that can be used as examples in order to run the containers:

* `bin/docker-run-cli-args.sh`: running the container passing CLI arguments, so we can go straightforward just by shell.

* `bin/docker-run-conf-file.sh`: running the container using the `etc/xmrig.json`, which is mounted as a container volume located at `/etc/xmrig.json` (this file is looked by the `ENTRYPOINT` on startup).

## Tags

| Tag                                                    | CMake Flag: WITH_AEON | CMake Flag: WITH_HTTPD | CMake Flag: WITH_LIBCPUID |
|--------------------------------------------------------|-----------------------|------------------------|---------------------------|
| latest                                                 | ON                    | ON                     | ON                        |
| latest-no-httpd                                        | ON                    | OFF                    | ON                        |
| 2.4.5                                                  | ON                    | ON                     | ON                        |
| 2.4.5-no-httpd                                         | ON                    | OFF                    | ON                        |
| alpine-3.7-xmrig-2.4.5-aeon_on-httpd_on-libcpuid_on    | ON                    | ON                     | ON                        |
| alpine-3.7-xmrig-2.4.5-aeon_on-httpd_on-libcpuid_off   | ON                    | ON                     | OFF                       |
| alpine-3.7-xmrig-2.4.5-aeon_on-httpd_off-libcpuid_on   | ON                    | OFF                    | ON                        |
| alpine-3.7-xmrig-2.4.5-aeon_on-httpd_off-libcpuid_off  | ON                    | OFF                    | OFF                       |
| alpine-3.7-xmrig-2.4.5-aeon_off-httpd_on-libcpuid_on   | OFF                   | ON                     | ON                        |
| alpine-3.7-xmrig-2.4.5-aeon_off-httpd_on-libcpuid_off  | OFF                   | ON                     | OFF                       |
| alpine-3.7-xmrig-2.4.5-aeon_off-httpd_off-libcpuid_on  | OFF                   | OFF                    | ON                        |
| alpine-3.7-xmrig-2.4.5-aeon_off-httpd_off-libcpuid_off | OFF                   | OFF                    | OFF                       |

Please take a look at the [DockerHub page](https://hub.docker.com/r/herrera/xmrig-cpu/tags/) and see the available tags that you can use.

## Author

Rafael de Paula Herrera [<herrera.rp@gmail.com>](mailto:herrera.rp@gmail.com)

XMR: `46vBhfyQMMM2vu2HHNVonb4ZH3z92kAvVSvfxctEP9Kr12xPANBvwEP4NPkLfbWXDcMsvJVXwkscn48gcUAv4hBZJuFXhYS`

BTC: `1boderQndxMt81ZR994WN3k6KsrEZcYkG`