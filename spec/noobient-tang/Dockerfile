FROM pkgdocker.ubuntu1804mipsel
ADD data /home/pkgdocker/

RUN apt -y install ninja-build meson pkg-config locales gcc systemd
RUN locale-gen en_US.UTF-8

CMD /home/pkgdocker/steps.sh
