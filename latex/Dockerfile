FROM mkbase:16.04

RUN apt-get update && apt-get install -y \
	wget \
	perl-modules

RUN wget http://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz && \
	tar -xzf install-tl-unx.tar.gz && \
	rm install-tl-unx.tar.gz && \
	mv install-tl-* install-tl &&  \
	echo "selected_scheme scheme-basic" > /install-tl/scheme-basic.profile && \
	/install-tl/install-tl --profile=/install-tl/scheme-basic.profile && \
	ln -s /usr/local/texlive/*/bin/x86_64-linux/* /usr/local/bin/ && \
	mkdir $HOME/files $HOME/bin

COPY compile.sh $HOME/bin/compile.sh

RUN chown -R $USER:$USER $HOME/files $HOME/bin

ENV PATH $HOME/bin:$PATH

WORKDIR $HOME/files

RUN tlmgr install \
	algorithm2e \
	appendix \
    beamer \
	biblatex \
	bigfoot \
	caption \
	cleveref \
	datatool \
	enumitem \
	etoolbox \
	fp \
	glossaries \
    glossaries-english \
	isodate \
	l3kernel \
	l3packages \
	listings \
	logreq \
	mfirstuc \
	microtype \
    ms \
	ntheorem \
	parskip \
	relsize \
	setspace \
	siunitx \
	substr \
	textcase \
	titlesec \
	tocloft \
    tracklang \
	ulem \
	xfor \
	xkeyval \
    xstring

USER $USER
