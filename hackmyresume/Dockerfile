FROM node:0.10

ENV HTML_PDF_URL=http://download.gna.org/wkhtmltopdf/0.12/0.12.2.1/wkhtmltox-0.12.2.1_linux-jessie-amd64.deb
RUN echo 'deb http://ftp.de.debian.org/debian jessie main' >> /etc/apt/sources.list && \
	apt-get update && apt-get install -y xfonts-base xfonts-75dpi && \
	wget $HTML_PDF_URL -qO temp.deb && \
	dpkg -i temp.deb && rm temp.deb && \
	npm install hackmyresume -g


CMD ["bash"]
