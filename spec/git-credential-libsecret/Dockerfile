FROM pkgdocker.ubuntu2004
ADD data /home/pkgdocker/

# build deps
RUN DEBIAN_FRONTEND=noninteractive apt -y install --no-install-recommends software-properties-common
RUN add-apt-repository -y ppa:git-core/ppa
RUN apt -y update
RUN apt -y dist-upgrade
RUN DEBIAN_FRONTEND=noninteractive apt -y --no-install-recommends install libsecret-1-dev libglib2.0-dev git gcc

CMD /home/pkgdocker/steps.sh
