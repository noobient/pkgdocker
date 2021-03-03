FROM pkgdocker.ubuntu1804
ADD data /home/pkgdocker/

# build deps
RUN apt -y install --no-install-recommends cmake libzstd-dev curl gnupg
# test deps
RUN apt -y install bash
# doc deps
RUN apt -y install --no-install-recommends asciidoc docbook-xml docbook-xsl libxslt1-dev libxml2-utils xsltproc
# clang
RUN echo 'deb http://apt.llvm.org/bionic/ llvm-toolchain-bionic-11 main' > /etc/apt/sources.list.d/llvm-11.list
RUN curl https://apt.llvm.org/llvm-snapshot.gpg.key | apt-key add -
RUN apt update && apt -y install --no-install-recommends clang-11 clang-format-11 lld-11

CMD /home/pkgdocker/steps.sh
