mkdir -p "${DEST_DIR}/DEBIAN"
cat "${ROOT_DIR}/control" | envsubst > "${DEST_DIR}/DEBIAN/control"

sudo chown -R root:root "${DEST_DIR}"
dpkg-deb --build "${DEST_DIR}"

mv "${ROOT_DIR}/${PKG_NAME}_${PKG_VER}-${PKG_BUILD}.deb" /pkg

popd
