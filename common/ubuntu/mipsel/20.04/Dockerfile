FROM ubuntu:20.04
RUN apt -y update && apt -y dist-upgrade
# for envsubst
RUN apt -y install --no-install-recommends gettext-base
# for dpkg-scanpackages
RUN apt -y install --no-install-recommends dpkg-dev
# common stuff
RUN DEBIAN_FRONTEND=noninteractive apt -y install wget git sudo unzip mc
# cross-compilation
RUN apt -y install gcc-mipsel-linux-gnu g++-mipsel-linux-gnu qemu qemu-user
# regular user
RUN useradd --groups sudo --create-home --user-group pkgdocker
# MIPSEL helpers
ADD --chmod=0755 qemu-mipsel-wrapper /usr/local/bin/qemu-mipsel-wrapper
ADD mipsel.cross /usr/local/etc/mipsel.cross
