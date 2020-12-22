mkdir -p "${DEST_DIR}/DEBIAN"
cat "${ROOT_DIR}/control" | envsubst > "${DEST_DIR}/DEBIAN/control"

if [ -f "${ROOT_DIR}/postinst" ]
then
    cp "${ROOT_DIR}/postinst" "${DEST_DIR}/DEBIAN/"
    chmod 0755 "${DEST_DIR}/DEBIAN/postinst"
fi

sudo chown -R root:root "${DEST_DIR}"
dpkg-deb --build "${DEST_DIR}"

mv "${ROOT_DIR}/${PKG_NAME}_${PKG_VER}-${PKG_BUILD}.deb" /pkg/

popd
