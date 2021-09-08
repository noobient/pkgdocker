dpkg -i --force-depends /pkg/libplist3_*.deb

#wget https://github.com/libimobiledevice/libusbmuxd/releases/download/${PKG_VER}/libusbmuxd-${PKG_VER}.tar.bz2
#tar xf libusbmuxd-${PKG_VER}.tar.bz2
#cd libusbmuxd-${PKG_VER}

GIT_REV=e32bf76
git clone https://github.com/libimobiledevice/libusbmuxd.git
cd libusbmuxd
git checkout ${GIT_REV}

#./configure --prefix=/usr
./autogen.sh --prefix=/usr
make -j$(nproc)
DESTDIR=${DEST_DIR} make install -j$(nproc)
