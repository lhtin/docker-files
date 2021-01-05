#!/bin/bash

docker pull lhtin/openjdk:build
docker run --name test-jdk -t --rm lhtin/openjdk:build-use-jdk15 /bin/bash -c "\
git clone --depth 1 https://github.com/openjdk/jdk.git /openjdk && \
cd /openjdk && \
bash configure --with-boot-jdk=/usr/lib/jdk --with-jtreg=/usr/lib/jtreg && \
make test TEST=\"jtreg:gc_epsilon\" \
"
echo "finish test."