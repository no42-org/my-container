#!/bin/bash -e

# shellcheck disable=SC2034

# Base Image Dependency
VERSION="7.5.1804"
BASE_IMAGE="centos:${VERSION}"

# Version information

# Container registry and tags
CONTAINER_PROJECT="$(basename "$(pwd)")"
CONTAINER_REGISTRY="docker.io"
CONTAINER_REGISTRY_REPO="no42org"
CONTAINER_VERSION_TAGS=("${IMAGE_VERSION}"
                        "latest")

# Container Image Artifact
CONTAINER_IMAGE="images/image.oci"
