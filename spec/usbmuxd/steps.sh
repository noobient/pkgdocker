dpkg -i --force-depends /pkg/libplist3_*.deb /pkg/libusbmuxd6_*.deb /pkg/libimobiledevice6_*.deb

#wget https://github.com/libimobiledevice/usbmuxd/releases/download/${PKG_VER}/usbmuxd-${PKG_VER}.tar.bz2
#tar xf usbmuxd-${PKG_VER}.tar.bz2
#cd usbmuxd-${PKG_VER}

GIT_REV=1600463
git clone https://github.com/libimobiledevice/${PKG_NAME}.git
cd ${PKG_NAME}
git checkout ${GIT_REV}

#./configure --prefix=/usr
./autogen.sh --prefix=/usr
make -j$(nproc)
DESTDIR=${DEST_DIR} make install -j$(nproc)
