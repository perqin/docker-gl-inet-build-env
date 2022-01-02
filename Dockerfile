FROM ubuntu:18.04

RUN apt update && apt upgrade -y
RUN DEBIAN_FRONTEND=noninteractive TZ=Etc/UTC /bin/bash -c 'apt install \
asciidoc bash bc binutils bzip2 fastjar flex gawk gcc genisoimage gettext git \
intltool jikespg libgtk2.0-dev libncurses5-dev libssl1.0-dev make mercurial \
patch perl-modules python2.7-dev rsync ruby sdcc subversion unzip util-linux \
wget xsltproc zlib1g-dev zlib1g-dev -y'

RUN mkdir /workspace
RUN cd /workspace && git clone https://github.com/gl-inet/sdk.git
RUN cd /workspace && ./download.sh siflower-1806

CMD cd /workspace && /bin/bash
