#!/bin/bash

curl https://download.java.net/java/GA/jdk15.0.1/51f4f36ad4ef43e39d0dfdbaf6549e32/9/GPL/openjdk-15.0.1_linux-x64_bin.tar.gz -o openjdk.tar.gz
curl https://ci.adoptopenjdk.net/view/Dependencies/job/jtreg/lastSuccessfulBuild/artifact/jtreg-5.1-b01.tar.gz -o jtreg.tar.gz
docker build -t lhtin/openjdk:build . --build-arg BOOT_JDK=./openjdk.tar.gz --build-arg JTREG=./jtreg.tar.gz