### [webdis](http://webd.is/) with [busybox:ubuntu-14.04](https://registry.hub.docker.com/_/busybox) using Docker

Results in a minimal image and it is extremely useful for serving in docker based examples, especially when coupled with [gurpartap/redis](https://registry.hub.docker.com/u/gurpartap/redis/).

##### Usage

`docker pull gurpartap/webdis`

`docker run -v ./webdis.prod.json:/etc/webdis.prod.json gurpartap/webdis`

The repo is available at https://registry.hub.docker.com/u/gurpartap/webdis/.

##### Building and releasing

```bash
$ cat ./script/build.sh
docker build --rm --force-rm -t gurpartap/webdis-build .
docker run -v /var/run/docker.sock:/var/run/docker.sock \
           -v $(which docker):/usr/local/bin/docker \
           -ti --name webdis-build gurpartap/webdis-build
```

```bash
$ cat ./script/push.sh
docker push gurpartap/webdis:latest
```

```bash
$ cat ./script/clean.sh
docker rm -f webdis-build
docker rmi -f gurpartap/webdis-build
docker rmi -f gurpartap/webdis
```

```bash
$ ./script/release.sh # will run them all.
```

If you have any feedback, please [contact me](http://gurpartap.com/).
