#!/bin/bash

set -eu

export ROOT_DIR="/home/pkgdocker"

. "${ROOT_DIR}/package.conf"

chown -R pkgdocker:pkgdocker "${ROOT_DIR}"

WORK_DIR="${ROOT_DIR}/${PKG_NAME}"
DEST_DIR="${ROOT_DIR}/${PKG_NAME}_${PKG_VER}-${PKG_BUILD}"

mkdir -p ${WORK_DIR}
mkdir -p ${DEST_DIR}

pushd ${WORK_DIR}
