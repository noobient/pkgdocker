dpkg -i --force-depends /pkg/libplist_*.deb /pkg/libusbmuxd_*.deb

wget https://github.com/libimobiledevice/libimobiledevice/releases/download/${PKG_VER}/libimobiledevice-${PKG_VER}.tar.bz2
tar xf libimobiledevice-${PKG_VER}.tar.bz2
cd libimobiledevice-${PKG_VER}

PYTHON=/usr/bin/python3 CYTHON=/usr/bin/cython3 ./configure --prefix=/usr
make -j$(nproc)
DESTDIR=${DEST_DIR} make install -j$(nproc)
