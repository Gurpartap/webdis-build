FROM ubuntu:14.04.1

RUN apt-get update -qq && \
    apt-get -y --force-yes install curl make gcc libevent-dev && \
    curl -o webdis-0.1.1.tar.gz https://github.com/nicolasff/webdis/archive/0.1.1.tar.gz && \
    tar -xvzf webdis-0.1.1.tar.gz && \
    cd webdis-0.1.1 && make && make install

ADD ./webdis/Dockerfile /opt/webdis/Dockerfile

CMD docker build --rm --force-rm -t gurpartap/webdis /opt/webdis/
