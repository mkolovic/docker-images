FROM mkbase:latest
MAINTAINER mkolovic@uwaterloo.ca

RUN apt-get update && apt-get install -y \
	build-essential \
	cmake \
	git \
	python-dev \
	python-pip \
	vim \
&& apt-get clean \
&& rm -rf /var/lib/apt/lists/* \
&& pip install flake8  \
&& git clone https://github.com/VundleVim/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim

COPY vimrc $HOME/.vimrc
COPY bundles.vim $HOME/.vim/bundles.vim
COPY ftplugin/ $HOME/.vim/ftplugin/

RUN vim -u $HOME/.vim/bundles.vim +PluginInstall +qall > /dev/null \
&& $HOME/.vim/bundle/YouCompleteMe/install.py \
&& mkdir $HOME/files && chown -R $USER:$USER $HOME

USER $USER

WORKDIR $HOME/files

ENTRYPOINT ["vim"]
CMD ["--help"]
