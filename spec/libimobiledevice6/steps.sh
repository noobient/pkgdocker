dpkg -i --force-depends /pkg/libplist3_*.deb /pkg/libusbmuxd6_*.deb

#wget https://github.com/libimobiledevice/libimobiledevice/releases/download/${PKG_VER}/libimobiledevice-${PKG_VER}.tar.bz2
#tar xf libimobiledevice-${PKG_VER}.tar.bz2
#cd libimobiledevice-${PKG_VER}

GIT_REV=24abbb9
git clone https://github.com/libimobiledevice/libimobiledevice.git
cd libimobiledevice
git checkout ${GIT_REV}

#PYTHON=/usr/bin/python3 CYTHON=/usr/bin/cython3 ./configure --prefix=/usr
PYTHON=/usr/bin/python3 CYTHON=/usr/bin/cython3 ./autogen.sh --prefix=/usr
make -j$(nproc)
DESTDIR=${DEST_DIR} make install -j$(nproc)
