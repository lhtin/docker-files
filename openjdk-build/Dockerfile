FROM lhtin/openjdk:base

ARG BOOT_JDK
ARG JTREG

# boot jdk
COPY $BOOT_JDK /tmp
RUN mkdir -p /usr/lib/jdk
RUN tar xzf /tmp/$BOOT_JDK -C /usr/lib/jdk --strip-components=1

RUN ln -s /usr/lib/jdk/bin/java /usr/bin/java
RUN ln -s /usr/lib/jdk/bin/javac /usr/bin/javac
RUN ln -s /usr/lib/jdk/bin/javap /usr/bin/javap
RUN ln -s /usr/lib/jdk/bin/jaotc /usr/bin/jaotc

# jtreg
COPY $JTREG /tmp
RUN mkdir -p /usr/lib/jtreg
RUN tar xzf /tmp/$JTREG -C /usr/lib/jtreg --strip-components=1

# clean
RUN rm /tmp/$BOOT_JDK
RUN rm /tmp/$JTREG

