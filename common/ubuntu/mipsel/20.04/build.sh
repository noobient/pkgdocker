#!/bin/bash

set -eu

docker pull ubuntu:20.04
docker build --network=host --tag "pkgdocker.ubuntu2004mipsel" .
