FROM pkgdocker.ubuntu1804
COPY build.sh /pkgdocker/
COPY control /pkgdocker/
COPY package.conf /pkgdocker/
COPY steps.sh /pkgdocker/
RUN apt -y update
# for basic build
RUN apt -y install --no-install-recommends pkg-config
RUN apt -y install file gcc libssl-dev libcurl4-openssl-dev uuid-dev
# for manpages and unittests
RUN apt -y install pandoc libcmocka-dev python-yaml
CMD ["/pkgdocker/build.sh"]
