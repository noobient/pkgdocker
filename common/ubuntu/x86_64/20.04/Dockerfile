FROM ubuntu:20.04
RUN apt -y update
# for envsubst
RUN apt -y install --no-install-recommends gettext-base
# for dpkg-scanpackages
RUN apt -y install --no-install-recommends dpkg-dev
# common stuff
RUN apt -y install wget git
# regular user
RUN useradd --groups sudo --create-home --user-group pkgdocker
