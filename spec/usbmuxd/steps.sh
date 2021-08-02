dpkg -i --force-depends /pkg/libplist_*.deb /pkg/libusbmuxd_*.deb /pkg/libimobiledevice_*.deb

wget https://github.com/libimobiledevice/usbmuxd/releases/download/${PKG_VER}/usbmuxd-${PKG_VER}.tar.bz2
tar xf usbmuxd-${PKG_VER}.tar.bz2
cd usbmuxd-${PKG_VER}

./configure --prefix=/usr
make -j$(nproc)
DESTDIR=${DEST_DIR} make install -j$(nproc)
