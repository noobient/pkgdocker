wget https://github.com/nodejs/http-parser/archive/v${PKG_VER}.tar.gz
tar xf v${PKG_VER}.tar.gz
cd http-parser-${PKG_VER}
CC=mipsel-linux-gnu-gcc CC_LD=mipsel-linux-gnu-ld DESTDIR=${DEST_DIR} make -j $(nproc) install
