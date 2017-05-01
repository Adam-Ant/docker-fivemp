FROM debian:jessie

MAINTAINER "Adam Dodman <adam.dodman@gmx.com>"

ENV DEBIAN_FRONTEND=noninteractive

ADD entrypoint.sh /

RUN chmod +x /entrypoint.sh \
 && apt-get update -qq \
 && apt-get install -yqq libcurl3-gnutls wget unzip\
 && wget -O /tmp/server.zip https://www.five-multiplayer.net/dl/linsrv.zip \
 && unzip -q /tmp/server.zip -d / \
 && mv /Linux\ Server /fivemp-base \
 && apt-get remove -yqq unzip wget \
 && apt-get -yqq autoremove \
 && apt-get -yqq clean \
 && rm -rf /tmp/* /var/lib/apt /var/tmp/*
 
VOLUME ["/fivemp"]

EXPOSE 2322/udp

ENTRYPOINT ["/entrypoint.sh"]
CMD ["/fivemp/Server.Launcher.so"]

