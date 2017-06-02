FROM ubuntu:14.04
MAINTAINER 7next


RUN apt-get update 
RUN apt-get install -y openjdk-7-jdk

RUN update-alternatives --config java
RUN update-alternatives --config javac

RUN /var/lib/dpkg/info/openjdk-7-jdk:amd64.prerm remove

RUN apt-get install -y git-core gnupg flex bison gperf libsdl1.2-dev \
 libesd0-dev libwxgtk2.8-dev squashfs-tools build-essential zip curl \
 libncurses5-dev zlib1g-dev pngcrush schedtool libxml2 libxml2-utils \
 xsltproc lzop libc6-dev schedtool g++-multilib lib32z1-dev lib32ncurses5-dev \
 lib32readline-gplv2-dev gcc-multilib libswitch-perl \
 libssl1.0.0 libssl-dev 

RUN mkdir data 