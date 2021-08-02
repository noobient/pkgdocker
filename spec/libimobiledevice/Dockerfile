FROM pkgdocker.ubuntu2004
ADD data /home/pkgdocker/

RUN apt -y update
RUN apt -y install gcc python3 cython3 libssl-dev
RUN apt -y install --no-install-recommends pkg-config
# this package only searches for 'cython' and 'python' executables
#RUN update-alternatives --install /usr/bin/python python /usr/bin/python3 10
#RUN update-alternatives --install /usr/bin/cython cython /usr/bin/cython3 10

CMD /home/pkgdocker/steps.sh
