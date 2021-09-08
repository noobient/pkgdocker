#!/bin/bash

set -eu

#sed -i.orig 's/^# deb-src /deb-src /' /etc/apt/sources.list
#apt update
#DEBIAN_FRONTEND=noninteractive apt -y build-dep wpasupplicant

cd /home/pkgdocker

wget http://archive.ubuntu.com/ubuntu/pool/main/w/wpa/wpa_2.9-1ubuntu4.3.dsc
wget http://archive.ubuntu.com/ubuntu/pool/main/w/wpa/wpa_2.9.orig.tar.xz
wget http://archive.ubuntu.com/ubuntu/pool/main/w/wpa/wpa_2.9-1ubuntu4.3.debian.tar.xz

#sed -i 's/Version: 2:2.9-1ubuntu4.3/Version: 2:2.9-2ubuntu4.3/' wpa_2.9-1ubuntu4.3.dsc

dpkg-source -x wpa_2.9-1ubuntu4.3.dsc
cd wpa-2.9

#echo PATCHING
patch -p1 -i /home/pkgdocker/miracast.patch
#echo PATCHING DONE

dpkg-buildpackage -b
cp ../*.deb /pkg/
