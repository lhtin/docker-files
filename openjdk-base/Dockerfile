FROM ubuntu:18.04
RUN apt-get update \
  && apt-get install -qq -u --no-install-recommends \
    software-properties-common \
    dirmngr \
    gpg-agent \
    coreutils \
  && apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 0x219BD9C9 \
  && add-apt-repository 'deb http://repos.azulsystems.com/ubuntu stable main' \
  && apt-get update \
  && apt-get -y upgrade \
  && apt-get install -qq -y --no-install-recommends \
    file \
    unzip \
    zip \
    g++ \
    gcc \
    libfontconfig1-dev \
    libfreetype6-dev \
    libcups2-dev \
    libx11-dev libxext-dev libxrender-dev libxrandr-dev libxtst-dev libxt-dev \
    libasound2-dev \
    libffi-dev \
    autoconf \
    wget \
    git \