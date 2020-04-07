#!/bin/sh

set -e

args=""

if [ ! -z "${DEBUG_LEVEL}" ]; then
	args="${args} -l ${DEBUG_LEVEL}"
fi

if [ ! -z "${DATA_DIR}" ]; then
	args="${args} -d ${DATA_DIR}"
fi

if [ ! -z "${LISTEN_PORT}" ]; then
	args="${args} -p ${LISTEN_PORT}"
fi

if [ ! -z "${TOKEN}" ]; then
	args="${args} -k ${TOKEN}"
fi

if [ ! -z "${URL}" ]; then
	args="${args} -u ${URL}"
fi

/go/bin/u2ckdump ${args}

