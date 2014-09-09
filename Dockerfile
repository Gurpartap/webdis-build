FROM ubuntu:14.04.1

ENV HOME /root
ENV DEBIAN_FRONTEND noninteractive
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8
ENV LC_ALL en_US.UTF-8
RUN locale-gen en_US.UTF-8 ;\
    echo 'LANG="en_US.UTF-8"' > /etc/default/locale ;\
    dpkg-reconfigure locales

RUN apt-get update -y && \
    apt-get install -y --force-yes build-essential git-core libevent-dev && \
    cd /tmp/ && git clone https://github.com/nicolasff/webdis && \
    cd /tmp/webdis && make && make install && \
    mkdir -p /opt/webdis/ && \
    cp /usr/local/bin/webdis /opt/webdis/ && \
    cp /etc/webdis.prod.json /opt/webdis/

ADD ./webdis/Dockerfile /opt/webdis/Dockerfile

CMD docker build --rm --force-rm -t gurpartap/webdis /opt/webdis/
