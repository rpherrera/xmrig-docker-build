#!/bin/bash -ex

ABSOLUTE_PATH="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

. "${ABSOLUTE_PATH}/docker-config.sh"

docker build . -t "${DOCKER_IMAGE}"
docker tag "${DOCKER_IMAGE}" "${DOCKER_IMAGE_FULL}"