FROM ubuntu:18.04

WORKDIR /usr/downloads
RUN sudo apt-get update && sudo apt-get upgrade -y && \
	curl -O https://archive.org/download/quartus-9.1-sp2-free-linux/91sp2_quartus_free_linux.tar
	tar xvf 91sp2_quartus_free_linux.tar
