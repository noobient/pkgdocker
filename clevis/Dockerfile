FROM pkgdocker.ubuntu1804
COPY build.sh /pkgdocker/
COPY clevis.patch /pkgdocker/
COPY control /pkgdocker/
COPY package.conf /pkgdocker/
COPY steps.sh /pkgdocker/
RUN apt -y update
RUN apt -y install --no-install-recommends pkg-config asciidoc-base xmlto
RUN apt -y install sudo curl systemd initramfs-tools bash-completion jq meson gcc jose libjose-dev luksmeta libluksmeta-dev tang libpwquality-tools libglib2.0-dev libudisks2-dev libaudit-dev cryptsetup-bin
CMD ["/pkgdocker/build.sh"]
