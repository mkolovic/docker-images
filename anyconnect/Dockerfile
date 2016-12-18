FROM ubuntu:16.04

ADD vpnsetup.sh /


RUN  mkdir -p /usr/share/desktop-directories && \
     mkdir -p /usr/share/applications && \
     apt update -qq && apt -qq -y install network-manager-openconnect
     ./vpnsetup.sh
