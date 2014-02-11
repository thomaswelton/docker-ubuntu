FROM ubuntu:precise

MAINTAINER thomaswelton

USER root
ENV HOME /root

# Update Sources
RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe multiverse" > /etc/apt/sources.list

# Update and upgrade packages
RUN apt-get update
RUN apt-get -y upgrade

# Install tools
RUN apt-get -y install vim curl git build-essential make gcc wget

# Install supervisor
RUN apt-get -y install supervisor
RUN mkdir -p /var/log/supervisor
