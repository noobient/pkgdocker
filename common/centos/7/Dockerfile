FROM centos:7

# RVM
ENV PATH="${PATH}:/usr/local/rvm/bin"
SHELL [ "/bin/bash", "-l", "-c" ]

RUN yum update -y

# Generic RPM stuff
RUN yum -y install gcc rpm-build rpm-devel rpmlint make python bash coreutils diffutils patch rpmdevtools

# Ruby
RUN yum -y install which
RUN gpg --keyserver hkp://pool.sks-keyservers.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
RUN curl -L get.rvm.io | bash -s stable
RUN rvm requirements run
RUN rvm install 2.7
RUN rvm use 2.7 --default

# FPM
RUN gem install --no-document fpm
