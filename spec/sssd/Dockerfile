FROM pkgdocker.ubuntu1804
ADD data /home/pkgdocker/

# build dependencies
RUN apt -y install gcc file
# package dependencies
RUN apt -y install libssl-dev libpopt-dev libtalloc-dev libtdb-dev libtevent-dev libldb-dev libdhash-dev libcollection-dev libini-config-dev libpam0g-dev libgdm-dev libldap2-dev libkrb5-dev libc-ares-dev nscd dnsutils libkeyutils-dev cifs-utils systemd libsystemd-dev samba-dev libsmbclient-dev libsasl2-dev libnfsidmap-dev uuid-dev libjansson-dev libnl-route-3-dev libdbus-1-dev xsltproc libxml2-utils docbook-xsl ldap-utils python3-dev libselinux1-dev libsemanage1-dev libp11-kit-dev
# test dependencies
RUN apt -y install libcmocka-dev check libuid-wrapper libnss-wrapper libpam-wrapper gnutls-bin faketime valgrind softhsm2

CMD /home/pkgdocker/steps.sh
