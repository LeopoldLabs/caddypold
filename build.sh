#!/usr/bin/env bash


set -euxo pipefail

export TAG="ghcr.io/leopoldlabs/caddypold"

docker build . --platform linux/amd64 -t "$TAG"

docker push "${TAG}"
