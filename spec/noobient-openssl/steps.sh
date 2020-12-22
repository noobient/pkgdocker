dpkg --force-architecture --force-depends -i /pkg/noobient-zlib_*.deb
wget https://www.openssl.org/source/openssl-${PKG_VER}.tar.gz
tar xf openssl-${PKG_VER}.tar.gz
cd openssl-${PKG_VER}
./Configure linux-mips32 --cross-compile-prefix=mipsel-linux-gnu- --prefix=/usr/local zlib --with-zlib-include=/usr/local/include --with-zlib-lib=/usr/local/lib
make -j$(nproc)
make DESTDIR="${DEST_DIR}" -j$(nproc) install_sw
# TODO figure out if this is needed or not
#make DESTDIR="${DEST_DIR}" -j$(nproc) install_ssldirs
