FROM busybox:ubuntu-14.04

ADD ./webdis.prod.json /etc/webdis.prod.json
ADD ./webdis /usr/local/bin/webdis

ADD ./opkg.conf /etc/opkg.conf
ADD ./opkg-install /usr/bin/opkg-install
RUN opkg-cl install http://downloads.openwrt.org/snapshots/trunk/x86_64/packages/base/libgcc_4.8-linaro-1_x86_64.ipk && \
    opkg-cl install http://downloads.openwrt.org/snapshots/trunk/x86_64/packages/base/libc_0.9.33.2-1_x86_64.ipk && \
    opkg-cl install http://downloads.openwrt.org/snapshots/trunk/ar71xx/packages/base/libevent2_2.0.21-1_ar71xx.ipk && \
    opkg-cl install http://downloads.openwrt.org/snapshots/trunk/ar71xx/packages/packages/wget_1.15-1_ar71xx.ipk

EXPOSE 7379

CMD ["/usr/local/bin/webdis", "/etc/webdis.prod.json"]
