FROM busybox:ubuntu-14.04

ADD ./webdis.prod.json /etc/webdis.prod.json
ADD ./webdis /usr/local/bin/webdis

RUN cd /tmp && wget http://mirrors.kernel.org/ubuntu/pool/main/libe/libevent/libevent-2.0-5_2.0.21-stable-1ubuntu1_amd64.deb && \
    dpkg -i --force-depends libevent-2.0-5_2.0.21-stable-1ubuntu1_amd64.deb

EXPOSE 7379

CMD ["/usr/local/bin/webdis", "/etc/webdis.prod.json"]
