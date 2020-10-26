apt -y install tpm2-tools
GIT_REV=1285061
git clone https://github.com/latchset/clevis.git
cd clevis
git checkout ${GIT_REV}

#wget https://github.com/latchset/clevis/releases/download/v${PKG_VER}/clevis-${PKG_VER}.tar.xz
#tar xf clevis-${PKG_VER}.tar.xz
#cd clevis-${PKG_VER}

# TODO remove once fixed upstream
# https://github.com/latchset/clevis/issues/158
# https://github.com/latchset/clevis/issues/145
patch -i "${ROOT_DIR}/clevis.patch" -p1

meson build --prefix=/usr --libdir=/usr/lib/x86_64-linux-gnu
ninja -C build
sudo ninja -C build test
DESTDIR=${DEST_DIR} ninja -C build install

cat << EOF > "${DEST_DIR}/DEBIAN/postinst"
/usr/sbin/update-initramfs -c -k all
EOF
chmod +x "${DEST_DIR}/DEBIAN/postinst"

cat << EOF > "${DEST_DIR}/DEBIAN/postrm"
/usr/sbin/update-initramfs -c -k all
EOF
chmod +x "${DEST_DIR}/DEBIAN/postrm"
