wget https://gitlab.gnome.org/GNOME/gnome-network-displays/-/archive/v${PKG_VER}/gnome-network-displays-v${PKG_VER}.tar.gz
tar xf gnome-network-displays-v${PKG_VER}.tar.gz
cd gnome-network-displays-v${PKG_VER}

mkdir -p build && cd build
meson .. --prefix=/usr
ninja -j$(nproc)

mkdir -p "${DEST_DIR}/etc/polkit-1/localauthority/20-org.d"
cat << EOF > "${DEST_DIR}/etc/polkit-1/localauthority/20-org.d/99-firewalld-inspect.pkla"
[FirewallD config inspection for users]
Identity=unix-user:*
Action=org.fedoraproject.FirewallD1.config.info
ResultAny=auth_admin_keep
ResultInactive=auth_admin_keep
ResultActive=yes
EOF
chmod 0640 "${DEST_DIR}/etc/polkit-1/localauthority/20-org.d/99-firewalld-inspect.pkla"

DESTDIR="${DEST_DIR}" ninja install
