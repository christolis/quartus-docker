FROM ubuntu:18.04

WORKDIR /usr/downloads
RUN apt-get update && apt-get upgrade -y
	# dpkg --add-architecture i386
	# apt-get update
	# apt-get install libc6:i386 libncurses5:i386 libstdc++6:i386 tcsh:i386 libxext6:i386 libx11-6:i386 libxau6:i386 libxdmcp6:i386 libfreetype6:i386 qt4-dev-tools:i386 libqtwebkit-dev:i386 libpng-tools:i386 fontconfig:i386
RUN apt-get install libc6 libncurses5 libstdc++6 tcsh libxext6 libx11-6 libxau6 libxdmcp6 libfreetype6 qt4-dev-tools libqtwebkit-dev libpng-tools fontconfig
RUN mkdir ../install
RUN cd ../install
RUN curl -LJO "https://archive.org/download/quartus-9.1-sp2-free-linux/91sp2_quartus_free_linux.tar"
RUN tar -xvf 91sp2_quartus_free_linux.tar
RUN cd quartus-free
RUN ./install --auto
