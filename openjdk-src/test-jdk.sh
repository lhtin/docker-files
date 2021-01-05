#!/bin/bash

docker pull lhtin/openjdk:build-with-lhtin-src
docker run --name test-jdk -t --rm lhtin/openjdk:build-with-lhtin-src /bin/bash -c "\
  cd /openjdk && \
  git pull && \
  bash configure --with-boot-jdk=/usr/lib/jdk --with-jtreg=/usr/lib/jtreg && \
  make test TEST=\"jtreg:gc_epsilon\" \
"
echo "finish test."