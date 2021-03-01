dpkg --force-architecture --force-depends -i /pkg/noobient-zlib_*.deb /pkg/noobient-jansson_*.deb /pkg/noobient-openssl_*.deb /pkg/noobient-jose_*.deb /pkg/noobient-http-parser_*.deb
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# old releases didn't use ninja/meson
wget https://github.com/latchset/tang/archive/v${PKG_VER}.tar.gz
tar xf v${PKG_VER}.tar.gz
cd tang-${PKG_VER}

#GIT_REV=7510661
#git clone https://github.com/latchset/tang.git
#cd tang
#git checkout ${GIT_REV}

# TODO meson bug?
ln -s /usr/local/include/http_parser.h /usr/include/http_parser.h

# modify the default port since UBNT uses 80 for webadmin
sed -i 's/^ListenStream=.*/ListenStream=8080/' units/tangd.socket

mkdir -p build && cd build
meson .. --cross-file /usr/local/etc/mipsel.cross --prefix=/usr/local
ninja -j$(nproc)
DESTDIR="${DEST_DIR}" ninja install
