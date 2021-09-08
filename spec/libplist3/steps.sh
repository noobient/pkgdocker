#wget https://github.com/libimobiledevice/libplist/releases/download/${PKG_VER}/libplist-${PKG_VER}.tar.bz2
#tar xf libplist-${PKG_VER}.tar.bz2
#cd libplist-${PKG_VER}

GIT_REV=feb0bcd
git clone https://github.com/libimobiledevice/libplist.git
cd libplist
git checkout ${GIT_REV}

#CYTHON=/usr/bin/cython3 ./configure --prefix=/usr
CYTHON=/usr/bin/cython3 ./autogen.sh --prefix=/usr
make -j$(nproc)
DESTDIR=${DEST_DIR} make install -j$(nproc)
