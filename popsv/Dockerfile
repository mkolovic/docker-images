FROM hegele-lab:latest
MAINTAINER mkolovic <mkolovic@uwaterloo.ca>

RUN echo "deb http://cran.utstat.utoronto.ca/bin/linux/ubuntu trusty/" >> /etc/apt/sources.list && \
	apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E084DAB9 && \
	apt-get update && apt-get install -y  \
		libcurl4-gnutls-dev  \
		libssh2-1-dev  \
		libssl-dev  \
		libxml2-dev  \
		r-base r-base-dev  \
&& apt-get clean \
&& rm -rf /var/lib/apt/lists/*

RUN R -e 'source("http://bioconductor.org/biocLite.R");\
biocLite(pkgs=c("BSgenome.Hsapiens.UCSC.hg19",\
"Rsamtools",\
"BatchJobs",\
"qvalue",\
"DNAcopy",\
"devtools",\
"data.table",\
"dplyr",\
"outliers",\
"fdrtool",\
"shiny",\
"reshape"),\
ask=FALSE)' && \
	curl -L https://github.com/jmonlong/PopSV/releases/download/v1.0/PopSV_1.0.tar.gz >> PopSV_1.0.tar.gz && \
	R CMD INSTALL PopSV_1.0.tar.gz && \
	rm -rf PopSV_1.0.tar.gz

RUN echo "cluster.functions = makeClusterFunctionsMulticore()" > $HOME/.BatchJobs.R && echo "staged.queries = TRUE" >> $HOME/.BatchJobs.R

USER $USER

WORKDIR $HOME
