dpkg --force-architecture --force-depends -i /pkg/noobient-zlib_*.deb /pkg/noobient-jansson_*.deb /pkg/noobient-openssl_*.deb
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# old releases didn't use ninja/meson
#wget https://github.com/latchset/jose/archive/v${PKG_VER}.tar.gz
#tar xf v${PKG_VER}.tar.gz
#cd jose-${PKG_VER}

GIT_REV=54bdd6d
git clone https://github.com/latchset/jose.git
cd jose
git checkout ${GIT_REV}

mkdir -p build && cd build
PKG_CONFIG_PATH=/usr/mipsel-linux-gnu/lib/pkgconfig meson .. --cross-file /usr/local/etc/mipsel.cross --prefix=/usr/local --libdir=lib
ninja -j$(nproc)
DESTDIR="${DEST_DIR}" ninja install
