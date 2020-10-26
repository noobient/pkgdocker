wget https://github.com/tpm2-software/tpm2-tss/releases/download/${PKG_VER}/tpm2-tss-${PKG_VER}.tar.gz
tar xf tpm2-tss-${PKG_VER}.tar.gz
cd tpm2-tss-${PKG_VER}
./configure --prefix=/usr --disable-doxygen-man --disable-doxygen-doc --with-udevrulesdir=/lib/udev/rules.d --libdir=/usr/lib/x86_64-linux-gnu
make -j $(nproc)
DESTDIR=${DEST_DIR} make install
