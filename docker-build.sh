#!/bin/bash -e

RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color

function info_green() {
    echo -e "${GREEN}$1${NC}"
}

BUILD_GARAMOND=y
BUILD_NGINX=y

if [[ $1 == garamond ]]; then
    BUILD_NGINX=n
elif [[ $1 == nginx ]]; then
    BUILD_GARAMOND=n
fi

if [[ $BUILD_GARAMOND == y ]]; then
    info_green "Building image for Garamond"
    docker build -f Dockerfile.garamond -t garamond:garamond .
fi

if [[ $BUILD_NGINX == y ]]; then
    info_green "Building image for nginx"
    docker build -f Dockerfile.nginx -t garamond:nginx .
fi
