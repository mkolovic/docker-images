FROM ubuntu:precise

RUN apt-get update && apt-get install -y \
	wget \
	perl-modules

RUN wget http://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz && \
	tar -xzf install-tl-unx.tar.gz && \
	rm install-tl-unx.tar.gz && \
	mv install-tl-* install-tl

WORKDIR /install-tl

RUN echo "selected_scheme scheme-medium" > scheme-medium.profile && \
	./install-tl --profile=scheme-medium.profile

RUN ln -s /usr/local/texlive/*/bin/x86_64-linux/* /usr/local/bin/

RUN mkdir /workdir
WORKDIR /workdir
