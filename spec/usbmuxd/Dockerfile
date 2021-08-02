FROM pkgdocker.ubuntu2004
ADD data /home/pkgdocker/

RUN apt -y update
RUN DEBIAN_FRONTEND=noninteractive apt -y install gcc libusb-1.0-0-dev python3 cython3 libssl-dev systemd
RUN apt -y install --no-install-recommends pkg-config

CMD /home/pkgdocker/steps.sh
