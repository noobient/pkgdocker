wget https://github.com/git/git/archive/refs/tags/v${PKG_VER}.tar.gz
tar xf v${PKG_VER}.tar.gz
cd git-${PKG_VER}/contrib/credential/libsecret
make -j $(nproc)

TARGET_DIR='/usr/share/doc/git/contrib/credential/libsecret'

mkdir -p "${DEST_DIR}/${TARGET_DIR}"
cp git-credential-libsecret "${DEST_DIR}/${TARGET_DIR}/"
