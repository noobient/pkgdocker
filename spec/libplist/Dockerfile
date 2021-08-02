FROM pkgdocker.ubuntu2004
ADD data /home/pkgdocker/

RUN apt -y update
RUN apt -y install gcc g++
RUN apt -y install python3 python3-dev cython3
RUN apt -y install --no-install-recommends pkg-config
# this package only searches for a 'cython' executable
#RUN update-alternatives --install /usr/bin/cython cython /usr/bin/cython3 10

CMD /home/pkgdocker/steps.sh
