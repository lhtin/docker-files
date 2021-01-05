#!/bin/bash

gitRepos=https://github.com/openjdk/jdk.git 

docker pull lhtin/openjdk:build-use-jdk15
docker build -t lhtin/openjdk:build-with-upstream-src . --build-arg GIT_REPOS=$gitRepos
docker push lhtin/openjdk:build-with-upstream-src