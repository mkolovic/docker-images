FROM ubuntu:latest
MAINTAINER mkolovic@uwaterloo.ca

RUN dpkg-reconfigure locales && \
	locale-gen en_CA.UTF-8 && \
	/usr/sbin/update-locale LANG=en_CA.UTF-8

ENV LC_ALL en_CA.UTF-8

ENV USER ubuntu
ENV HOME /home/$USER

RUN useradd -d $HOME -m -u 1000 -U $USER
