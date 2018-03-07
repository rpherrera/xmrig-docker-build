#!/bin/bash -ex

AUTHOR=${AUTHOR-'herrera'}
OS_FLAVOR=${OS_FLAVOR-'alpine'}
OS_VERSION=${OS_VERSION-'3.7'}
XMRIG_FLAVOR=${XMRIG_FLAVOR-'xmrig-cpu'}
XMRIG_VERSION=${XMRIG_VERSION-'2.4.5'}
DEFAULT_DOCKER_IMAGE='herrera/xmrig-cpu:alpine-3.7-xmrig-2.4.5-aeon_on-httpd_on-libcpuid_on'