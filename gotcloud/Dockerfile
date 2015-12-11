FROM ubuntu:latest
RUN apt-get update && apt-get install -y \
	cmake \
	curl \
	default-jre \
	g++ \
	libncurses5-dev \
	libssl0.9.8 \
	libwww-perl \
	perl-modules \
	zlib1g-dev \
&& apt-get clean \
&& rm -rf /var/lib/apt/lists/*

ENV USER=ubuntu GOTCLOUD_VERSION=gotcloud.1.17.5
ENV HOME /home/$USER
ENV WDIR $HOME/gotcloud

RUN curl -L https://github.com/statgen/gotcloud/archive/$GOTCLOUD_VERSION.tar.gz | tar -xzC /usr/local/ && \
	make -C /usr/local/gotcloud-$GOTCLOUD_VERSION/src && \
	useradd -d $HOME -m -u 1000 -U $USER && mkdir $WDIR && \
	ln -s $WDIR/gotcloud.ref /usr/local/gotcloud-$GOTCLOUD_VERSION/gotcloud.ref && \
	ln -s /usr/local/gotcloud-$GOTCLOUD_VERSION/gotcloud /usr/bin/gotcloud && \
	chown -R $USER:$USER /usr/local/gotcloud-$GOTCLOUD_VERSION $HOME


USER $USER

WORKDIR $WDIR

ENTRYPOINT ["/usr/bin/gotcloud"]
CMD ["test", "--leave-a-mess"]
