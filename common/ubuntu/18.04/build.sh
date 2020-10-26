#!/bin/bash

set -eu

docker pull ubuntu:18.04
docker build --network=host --tag "pkgdocker.ubuntu1804" .
