FROM ubuntu:18.04
RUN apt -y update
# for envsubst
RUN apt -y install --no-install-recommends gettext-base
# for dpkg-scanpackages
RUN apt -y install --no-install-recommends dpkg-dev
# common stuff
RUN apt -y install wget git sudo
# regular user
RUN useradd --groups sudo --create-home --user-group pkgdocker
