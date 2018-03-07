# High Performance Monero (XMR) CPU Miner

## Description

Docker builds for [High Performance Monero (XMR) CPU Miner](https://github.com/xmrig/xmrig).

## Tags

| Tag                                                    | CMake Flag: WITH_AEON | CMake Flag: WITH_HTTPD | CMake Flag: WITH_LIBCPUID |
|--------------------------------------------------------|-----------------------|------------------------|---------------------------|
| latest                                                 | ON                    | ON                     | ON                        |
| latest-no-httpd                                        | ON                    | ON                     | ON                        |
| 2.4.5                                                  | ON                    | ON                     | ON                        |
| 2.4.5-no-httpd                                         | ON                    | ON                     | ON                        |
| alpine-3.7-xmrig-2.4.5-aeon_on-httpd_on-libcpuid_on    | ON                    | ON                     | ON                        |
| alpine-3.7-xmrig-2.4.5-aeon_on-httpd_on-libcpuid_off   | ON                    | ON                     | OFF                       |
| alpine-3.7-xmrig-2.4.5-aeon_on-httpd_off-libcpuid_on   | ON                    | OFF                    | ON                        |
| alpine-3.7-xmrig-2.4.5-aeon_on-httpd_off-libcpuid_off  | ON                    | OFF                    | OFF                       |
| alpine-3.7-xmrig-2.4.5-aeon_off-httpd_on-libcpuid_on   | OFF                   | ON                     | ON                        |
| alpine-3.7-xmrig-2.4.5-aeon_off-httpd_on-libcpuid_off  | OFF                   | ON                     | OFF                       |
| alpine-3.7-xmrig-2.4.5-aeon_off-httpd_off-libcpuid_on  | OFF                   | OFF                    | ON                        |
| alpine-3.7-xmrig-2.4.5-aeon_off-httpd_off-libcpuid_off | OFF                   | OFF                    | OFF                       |