#!/bin/bash -e

export GARAMOND_DATA_ROOT_DIR=/
export GARAMOND_DATA_CONFIG_FILE=/local_path_to_data_config/file.json
export GARAMOND_HTTP_PORT=9000
export GARAMOND_LOG_LEVEL=debug

exec docker-compose $*
