FROM pkgdocker.ubuntu2004
ADD data /home/pkgdocker/

RUN apt -y update
RUN apt -y install gcc
RUN apt -y install --no-install-recommends pkg-config
# only for git build
RUN apt -y install libtool

CMD /home/pkgdocker/steps.sh
