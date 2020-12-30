#!/bin/bash

docker pull lhtin/openjdk:build-with-upstream-src
docker run --name test-jdk -t --rm lhtin/openjdk:build-with-upstream-src /bin/bash -c "\
cd /openjdk && \
git pull && \
bash configure --with-boot-jdk=/usr/lib/jdk --with-jtreg=/usr/lib/jtreg && \
make test TEST=\"jtreg:hotspot_all\" \
"
echo "finish test."