#!/usr/bin/env bash

VERSION="7.9.2-1537430919"

#arm build
docker build -t frooop/arm-lms:latest -t frooop/arm-lms:${VERSION} .

if [ $? == 0 ]; then
  docker push frooop/arm-lms:latest
  docker push frooop/arm-lms:${VERSION}
fi
