FROM ubuntu:20.04

RUN apt update && apt upgrade -y
RUN sudo apt install build-essential libncurses5-dev gawk git libssl-dev gettext zlib1g-dev swig unzip time rsync python3 python3-setuptools python3-yaml

RUN mkdir /workspace
WORKDIR /workspace
RUN git clone https://github.com/gl-inet/gl-infra-builder.git
RUN cd /workspace/gl-infra-builder && /bin/bash
