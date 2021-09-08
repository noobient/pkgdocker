dpkg -i --force-depends /pkg/libplist3_*.deb /pkg/libusbmuxd6_*.deb /pkg/libimobiledevice6_*.deb

GIT_REV=14839dc
git clone https://github.com/libimobiledevice/${PKG_NAME}.git
cd ${PKG_NAME}
git checkout ${GIT_REV}

./autogen.sh --prefix=/usr
make -j$(nproc)
DESTDIR=${DEST_DIR} make install -j$(nproc)
