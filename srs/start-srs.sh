#!/bin/bash

CANDIDATE="0.0.0.0"
docker run --rm -itd \
  -p 1935:1935 \
  -p 1985:1985 \
  -p 8080:8080 \
  -p 1990:1990 \
  -p 8088:8088 \
  -p 8000:8000/udp \
  --env CANDIDATE=$CANDIDATE \
  registry.cn-hangzhou.aliyuncs.com/ossrs/srs:6 ./objs/srs -c conf/docker.conf
