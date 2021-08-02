wget https://github.com/libimobiledevice/libplist/releases/download/${PKG_VER}/libplist-${PKG_VER}.tar.bz2
tar xf libplist-${PKG_VER}.tar.bz2
cd libplist-${PKG_VER}

CYTHON=/usr/bin/cython3 ./configure --prefix=/usr
make -j$(nproc)
DESTDIR=${DEST_DIR} make install -j$(nproc)
