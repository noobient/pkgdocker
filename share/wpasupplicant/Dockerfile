FROM ubuntu:20.04
ADD steps.sh /home/pkgdocker/steps.sh
ADD miracast.patch /home/pkgdocker/miracast.patch
RUN sed -i.orig 's/^# deb-src /deb-src /' /etc/apt/sources.list
RUN apt -y update
RUN apt -y install --no-install-recommends dpkg-dev
RUN apt -y install wget
RUN DEBIAN_FRONTEND=noninteractive apt -y build-dep wpasupplicant
CMD /home/pkgdocker/steps.sh
