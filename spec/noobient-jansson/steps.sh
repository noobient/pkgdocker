wget https://digip.org/jansson/releases/jansson-${PKG_VER}.tar.gz
tar xf jansson-${PKG_VER}.tar.gz
cd jansson-${PKG_VER}
CC=mipsel-linux-gnu-gcc CXX=mipsel-linux-gnu-g++ CC_LD=mipsel-linux-gnu-ld ./configure --host=mipsel-linux-gnu --prefix=/usr/local
make -j$(nproc)
DESTDIR="${DEST_DIR}" make -j$(nproc) install
