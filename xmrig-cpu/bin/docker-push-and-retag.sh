#!/bin/bash -ex

docker push herrera/xmrig-cpu:alpine-3.7-xmrig-2.5.0-aeon_off-httpd_off-libcpuid_off
docker push herrera/xmrig-cpu:alpine-3.7-xmrig-2.5.0-aeon_off-httpd_off-libcpuid_on
docker push herrera/xmrig-cpu:alpine-3.7-xmrig-2.5.0-aeon_off-httpd_on-libcpuid_off
docker push herrera/xmrig-cpu:alpine-3.7-xmrig-2.5.0-aeon_off-httpd_on-libcpuid_on
docker push herrera/xmrig-cpu:alpine-3.7-xmrig-2.5.0-aeon_on-httpd_off-libcpuid_on
docker push herrera/xmrig-cpu:alpine-3.7-xmrig-2.5.0-aeon_on-httpd_off-libcpuid_off
docker push herrera/xmrig-cpu:alpine-3.7-xmrig-2.5.0-aeon_on-httpd_on-libcpuid_on
docker push herrera/xmrig-cpu:alpine-3.7-xmrig-2.5.0-aeon_on-httpd_on-libcpuid_off

docker tag herrera/xmrig-cpu:alpine-3.7-xmrig-2.5.0-aeon_on-httpd_on-libcpuid_on herrera/xmrig-cpu:latest
docker tag herrera/xmrig-cpu:alpine-3.7-xmrig-2.5.0-aeon_on-httpd_off-libcpuid_on herrera/xmrig-cpu:latest-no-httpd
docker push herrera/xmrig-cpu:latest
docker push herrera/xmrig-cpu:latest-no-httpd

docker tag herrera/xmrig-cpu:alpine-3.7-xmrig-2.5.0-aeon_on-httpd_on-libcpuid_on herrera/xmrig-cpu:2.5.0
docker tag herrera/xmrig-cpu:alpine-3.7-xmrig-2.5.0-aeon_on-httpd_off-libcpuid_on herrera/xmrig-cpu:2.5.0-no-httpd
docker push herrera/xmrig-cpu:2.5.0
docker push herrera/xmrig-cpu:2.5.0-no-httpd