#!/bin/bash -ex

ABSOLUTE_PATH="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

. "${ABSOLUTE_PATH}/docker-config.sh"

POOL_1=${POOL_1-'pool.minexmr.com'}
POOL_2=${POOL_2-'fr.minexmr.com'}
POOL_3=${POOL_3-'de.minexmr.com'}
POOL_4=${POOL_4-'ca.minexmr.com'}
POOL_5=${POOL_5-'sg.minexmr.com'}
WALLET_ADDRESS=${WALLET_ADDRESS-'46vBhfyQMMM2vu2HHNVonb4ZH3z92kAvVSvfxctEP9Kr12xPANBvwEP4NPkLfbWXDcMsvJVXwkscn48gcUAv4hBZJuFXhYS'}
DONATE_LEVEL=${DONATE_LEVEL-'1'}
MAX_CPU_USAGE=${MAX_CPU_USAGE-'95'}
CPU_PRIORITY=${CPU_PRIORITY-'5'}

docker run \
  --rm \
  --name=xmrig-cpu \
  ${DEFAULT_DOCKER_IMAGE} \
  -S \
  --no-color \
  --donate-level ${DONATE_LEVEL} \
  --max-cpu-usage ${MAX_CPU_USAGE} \
  --cpu-priority ${CPU_PRIORITY} \
  -o ${POOL_1} \
  -u ${WALLET_ADDRESS} \
  -k \
  -o ${POOL_2} \
  -u ${WALLET_ADDRESS} \
  -k \
  -o ${POOL_3} \
  -u ${WALLET_ADDRESS} \
  -k \
  -o ${POOL_4} \
  -u ${WALLET_ADDRESS} \
  -k \
  -o ${POOL_5} \
  -u ${WALLET_ADDRESS} \
  -k