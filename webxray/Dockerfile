FROM ubuntu:latest
MAINTAINER mkolovic

RUN locale-gen en_CA.UTF-8
ENV LC_ALL=en_CA.UTF-8 LANG=en_CA.UTF-8 LANGUAGE=en_CA:en

RUN apt-get update && apt-get install -y \
	git \
	mysql-server \
	phantomjs \
	python3-pip \
&& apt-get clean \
&& rm -rf /var/lib/apt/lists/* \
&& pip3 install mysql-connector-python --allow-external mysql-connector-python \
&& git clone https://github.com/timlib/webXray.git /root/webXray

WORKDIR /root/webXray

ENTRYPOINT /usr/sbin/service mysql start && /usr/bin/python3 run_webxray.py -i
