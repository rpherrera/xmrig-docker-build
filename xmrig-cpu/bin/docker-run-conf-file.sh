#!/bin/bash -ex

ABSOLUTE_PATH="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

. "${ABSOLUTE_PATH}/docker-config.sh"

docker run \
  --rm \
  -v ${ABSOLUTE_PATH}/../etc/xmrig.json:/etc/xmrig.json \
  --name=xmrig-cpu \
  ${DOCKER_IMAGE_FULL}