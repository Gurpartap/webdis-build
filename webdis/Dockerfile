FROM busybox:ubuntu-14.04

ADD ./webdis.prod.json /etc/webdis.prod.json
ADD ./webdis /usr/local/bin/webdis

EXPOSE 7379

CMD ["/usr/local/bin/webdis", "/etc/webdis.prod.json"]
