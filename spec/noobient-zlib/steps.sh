wget https://zlib.net/zlib-${PKG_VER}.tar.gz
tar xf zlib-${PKG_VER}.tar.gz
cd zlib-${PKG_VER}
CC=mipsel-linux-gnu-gcc CC_LD=mipsel-linux-gnu-ld ./configure --prefix=/usr/local
make -j $(nproc)
DESTDIR=${DEST_DIR} make -j $(nproc) install
