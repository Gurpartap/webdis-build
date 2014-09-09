#!/bin/sh
# Usage: ./clean.sh

docker rm -f webdis-build 2> /dev/null
docker rmi -f gurpartap/webdis-build 2> /dev/null
docker rmi -f gurpartap/webdis 2> /dev/null
