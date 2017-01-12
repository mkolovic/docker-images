FROM node:7.2.1
MAINTAINER Mladen Kolovic

ENV HTMLPDF http://download.gna.org/wkhtmltopdf/0.12/0.12.4/wkhtmltox-0.12.4_linux-generic-amd64.tar.xz
ENV PATH $PATH:/usr/local/wkhtmltox/bin


RUN wget -qO- $HTMLPDF | tar xJ -C /usr/local && \
	npm install hackmyresume -g

WORKDIR /root

ENTRYPOINT ["hackmyresume"]
CMD ["--help"]
