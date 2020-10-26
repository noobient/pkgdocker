FROM pkgdocker.ubuntu1804
COPY build.sh /pkgdocker/
COPY control /pkgdocker/
COPY package.conf /pkgdocker/
COPY steps.sh /pkgdocker/
RUN apt -y update
RUN apt -y install --no-install-recommends pkg-config
RUN apt -y install file gcc libssl-dev libjson-c-dev libcurl4-openssl-dev systemd
CMD ["/pkgdocker/build.sh"]
