#!/bin/bash -e

# shellcheck disable=SC2034

# Configure base image dependency
BASE_IMAGE="centos"
BASE_IMAGE_VERSION="7.6.1810"
BUILD_DATE="$(date -u +"%Y-%m-%dT%H:%M:%S%z")"
BUILD_NUMBER="b5"
# Floating tags
IMAGE_VERSION=("${BASE_IMAGE_VERSION}-${BUILD_NUMBER}"
               "${BASE_IMAGE_VERSION}")

# Most specific tag when it is not build locally and in CircleCI
if [ -n "${CIRCLE_BUILD_NUM}" ]; then
  IMAGE_VERSION+=("${BASE_IMAGE_VERSION}-${BUILD_NUMBER}.${CIRCLE_BUILD_NUM}")
fi
