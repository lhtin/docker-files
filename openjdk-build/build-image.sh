#!/bin/bash

openjdkFile=./openjdk.tar.gz
jtregFile=./jtreg.tar.gz

if [ -f "$openjdkFile" ]; then
    echo "use local $openjdkFile"
else
    echo "downloading $openjdkFile"
    curl https://download.java.net/java/GA/jdk15.0.1/51f4f36ad4ef43e39d0dfdbaf6549e32/9/GPL/openjdk-15.0.1_linux-x64_bin.tar.gz -o $openjdkFile
fi

if [ -f "$jtregFile" ]; then
    echo "use local $jtregFile"
else
    echo "downloading $jtregFile"
    curl https://ci.adoptopenjdk.net/view/Dependencies/job/jtreg/lastSuccessfulBuild/artifact/jtreg-5.1-b01.tar.gz -o $jtregFile
fi

docker pull lhtin/openjdk:base
docker build -t lhtin/openjdk:build-use-jdk15 . --build-arg BOOT_JDK=$openjdkFile --build-arg JTREG=$jtregFile