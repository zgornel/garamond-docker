#!/bin/bash -e

export GARAMOND_DATA_ROOT_DIR=./data
export GARAMOND_DATA_CONFIG_FILE=/data/config.json
export GARAMOND_HTTP_PORT=9001
export GARAMOND_LOG_LEVEL=debug
export NGINX_HOST_PORT=9000

exec docker-compose $*
