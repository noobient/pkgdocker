wget https://github.com/facebook/zstd/releases/download/v${PKG_VER}/zstd-${PKG_VER}.tar.gz
tar xf zstd-${PKG_VER}.tar.gz
cd zstd-${PKG_VER}
CC=gcc-8 make -j $(nproc)
# gotta install under /usr/local, because many base packages depend on fix libzstd1 version
# we can't replace it, so use a different dir
PREFIX=/usr/local DESTDIR=${DEST_DIR} make install
