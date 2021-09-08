#!/bin/bash

set -eu

. package.conf

docker pull ubuntu:20.04
docker build --network=host --tag "pkgdocker.${PKG_NAME}:${PKG_VER}-${PKG_BUILD}" .
docker run --network=host --rm --mount type=bind,source="$(pwd)"/pkg,target=/pkg "pkgdocker.${PKG_NAME}:${PKG_VER}-${PKG_BUILD}"
