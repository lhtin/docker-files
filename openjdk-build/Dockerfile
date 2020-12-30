FROM lhtin/openjdk:base

ARG BOOT_JDK
ARG JTREG

# boot jdk
COPY $BOOT_JDK /tmp
RUN sh -c "mkdir -p /usr/lib/jdk && tar xzf /tmp/${BOOT_JDK} -C /usr/lib/jdk --strip-components=1"

# jtreg
COPY $JTREG /tmp
RUN sh -c "mkdir -p /usr/lib/jtreg && tar xzf /tmp/${JTREG} -C /usr/lib/jtreg --strip-components=1"
