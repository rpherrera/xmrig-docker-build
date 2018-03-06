#!/bin/bash -ex

ABSOLUTE_PATH="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

. "${ABSOLUTE_PATH}/docker-config.sh"

function to_lower() {
  echo "${1}" | tr '[:upper:]' '[:lower:]'
}

function get_docker_image() {
  CMAKE_OPTIONS="aeon_$(to_lower ${1})-httpd_$(to_lower ${3})-libcpuid_$(to_lower ${2})"
  DOCKER_IMAGE="${AUTHOR}/${XMRIG_FLAVOR}:${OS_FLAVOR}-${OS_VERSION}-xmrig-${XMRIG_VERSION}-${CMAKE_OPTIONS}"
  echo "${DOCKER_IMAGE}"
}

function build_image() {
  DOCKER_IMAGE=$(get_docker_image "${1}" "${2}" "${3}")
  docker build \
    --build-arg AEON=${1} \
    --build-arg HTTPD=${2} \
    --build-arg LIBCPUID=${3} \
    . -t "${DOCKER_IMAGE}"
}

function build_default_image() {
  build_image 'ON' 'OFF' 'ON'
}

function build_all_images() {
  flags=( 'ON' 'OFF' )
  for AEON in ${flags[@]}; do
    for HTTPD in ${flags[@]}; do
      for LIBCPUID in ${flags[@]}; do
        build_image "${AEON}" "${HTTPD}" "${LIBCPUID}"
      done
    done
  done
}

#build_default_image
build_all_images