#!/bin/bash

set -eu

docker pull centos:7
docker build --network=host --tag "pkgdocker.centos7" .
