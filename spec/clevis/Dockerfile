FROM pkgdocker.ubuntu2004
ADD data /home/pkgdocker/

RUN apt -y update
RUN DEBIAN_FRONTEND=noninteractive apt -y install --no-install-recommends pkg-config asciidoc-base xmlto
RUN apt -y install meson gcc jose libjose-dev jq tang libpwquality-tools bash-completion cryptsetup-bin libcryptsetup-dev sudo curl luksmeta libluksmeta-dev cmake systemd initramfs-tools libglib2.0-dev libudisks2-dev libaudit-dev tpm2-tools socat

CMD /home/pkgdocker/steps.sh
