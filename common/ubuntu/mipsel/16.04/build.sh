#!/bin/bash

set -eu

docker pull ubuntu:16.04
docker build --network=host --tag "pkgdocker.ubuntu1604mipsel" .
