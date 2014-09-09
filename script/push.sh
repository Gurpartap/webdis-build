#!/bin/sh
# Usage: ./push.sh [TAG]

docker push gurpartap/webdis:${1:-latest}
