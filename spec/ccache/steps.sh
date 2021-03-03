wget https://github.com/ccache/ccache/releases/download/v${PKG_VER}/ccache-${PKG_VER}.tar.gz
tar xf ccache-${PKG_VER}.tar.gz
cd ccache-${PKG_VER}
CC=clang-11 CXX=clang++-11 cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=/usr -DCLANG_FORMAT_EXE=clang-format-11
make -j $(nproc)
DESTDIR=${DEST_DIR} make install
