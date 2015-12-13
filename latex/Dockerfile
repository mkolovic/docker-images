FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
	wget \
	perl-modules

RUN wget http://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz && \
	tar -xzf install-tl-unx.tar.gz && \
	rm install-tl-unx.tar.gz && \
	mv install-tl-* install-tl &&  \
	echo "selected_scheme scheme-full" > /install-tl/scheme-full.profile && \
	/install-tl/install-tl --profile=/install-tl/scheme-full.profile

RUN ln -s /usr/local/texlive/*/bin/x86_64-linux/* /usr/local/bin/

WORKDIR /workdir
