wget https://github.com/SSSD/sssd/releases/download/sssd-$(tr . _  <<< ${PKG_VER})/sssd-${PKG_VER}.tar.gz
tar xf sssd-${PKG_VER}.tar.gz
cd sssd-${PKG_VER}
./configure --prefix=/usr --with-smb-idmap-interface-version=6 --with-initscript=systemd
make -j $(nproc)
DESTDIR=${DEST_DIR} make install
