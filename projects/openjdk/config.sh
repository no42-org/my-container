#!/bin/bash -e

# shellcheck disable=SC2034

# Dependencies
CENTOS_VERSION="7.5.1804-b130"
CENTOS_BASE_IMAGE="no42org/centos:${CENTOS_VERSION}"

# Specific container config
MAJOR_VERSION="1.8.0"
VERSION="${MAJOR_VERSION}.191.b12"
IMAGE_VERSION="{VERSION}"

if [ ! -z ${CIRCLE_BUILD_NUM+x} ]; then
  IMAGE_VERSION="${VERSION}-b${CIRCLE_BUILD_NUM}"
fi

# Container registry and tags
CONTAINER_PROJECT="$(basename "$(pwd)")"
CONTAINER_REGISTRY="docker.io"
CONTAINER_REGISTRY_REPO="no42org"
CONTAINER_VERSION_TAGS=("${IMAGE_VERSION}" "latest")

# Container Image Artifact
CONTAINER_IMAGE="images/image.oci"
