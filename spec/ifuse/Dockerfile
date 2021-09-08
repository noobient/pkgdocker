FROM pkgdocker.ubuntu2004
ADD data /home/pkgdocker/

RUN apt -y update
RUN DEBIAN_FRONTEND=noninteractive apt -y install python3 cython3 libssl-dev libfuse-dev
#gcc libusb-1.0-0-dev   systemd udev
RUN apt -y install --no-install-recommends pkg-config
# only for git build
RUN apt -y install libtool

CMD /home/pkgdocker/steps.sh
