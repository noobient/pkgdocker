wget https://github.com/latchset/clevis/releases/download/v${PKG_VER}/clevis-${PKG_VER}.tar.xz
tar xf clevis-${PKG_VER}.tar.xz
cd clevis-${PKG_VER}

meson build --prefix=/usr --libdir=/usr/lib/x86_64-linux-gnu
ninja -C build
ninja -C build test
DESTDIR=${DEST_DIR} ninja -C build install
