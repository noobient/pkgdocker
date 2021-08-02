dpkg -i --force-depends /pkg/libplist_*.deb

wget https://github.com/libimobiledevice/libusbmuxd/releases/download/${PKG_VER}/libusbmuxd-${PKG_VER}.tar.bz2
tar xf libusbmuxd-${PKG_VER}.tar.bz2
cd libusbmuxd-${PKG_VER}

./configure --prefix=/usr
make -j$(nproc)
DESTDIR=${DEST_DIR} make install -j$(nproc)
