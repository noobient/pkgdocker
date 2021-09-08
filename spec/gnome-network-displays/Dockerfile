FROM pkgdocker.ubuntu2004
ADD data /home/pkgdocker/

RUN DEBIAN_FRONTEND=noninteractive apt -y install ninja-build meson gcc cmake libgstreamer-plugins-base1.0-dev libgstrtspserver-1.0-dev libgtk-3-dev libnm-dev libpulse-dev appstream-util libglib2.0-bin gettext desktop-file-utils gstreamer1.0-plugins-ugly
RUN apt -y install --no-install-recommends pkg-config

CMD /home/pkgdocker/steps.sh
