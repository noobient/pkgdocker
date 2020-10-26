apt install -y tpm2-tss
wget https://github.com/tpm2-software/tpm2-tools/releases/download/${PKG_VER}/tpm2-tools-${PKG_VER}.tar.gz
tar xf tpm2-tools-${PKG_VER}.tar.gz
cd tpm2-tools-${PKG_VER}
./configure --prefix=/usr --enable-unit
make -j $(nproc)
DESTDIR=${DEST_DIR} make install
