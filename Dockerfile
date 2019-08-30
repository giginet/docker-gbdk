FROM ubuntu
LABEL version="1.0"
LABEL description="Docker image to build Gameboy ROMs with GBDK"
LABEL maintainer="giginet <giginet.net@gmail.com>"
SHELL ["/bin/bash", "-c"]

RUN apt-get update
RUN apt-get install -y git build-essential bison
RUN git clone https://github.com/giginet/gbdk.git /home/gbdk

WORKDIR /home/gbdk
ENV GBDKDIR /home/gbdk/
RUN make
RUN make install
ENV GBDKDIR /opt/gbdk/

WORKDIR /home/gbdk/gbdk-lib/examples/gb
RUN make
