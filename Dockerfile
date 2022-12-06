FROM i386/ubuntu:18.04

ARG DOWNLOAD_LINK="http://download.altera.com/akdlm/software/acdsinst/16.1/196/ib_installers"
ARG FILENAME="QuartusLiteSetup-16.1.0.196-linux.run"

ENV DISPLAY=host.docker.internal:0

WORKDIR /usr/downloads

# Update package manager and download dependencies
RUN dpkg --add-architecture i386 && apt-get update && apt-get install \
	libc6:i386 libncurses5:i386 libstdc++6:i386 curl:i386 \
	tcsh:i386 libxext6:i386 libx11-6:i386 libxau6:i386 libxdmcp6:i386 \
	libfreetype6:i386 qt4-dev-tools:i386 libqtwebkit-dev:i386 libpng-tools:i386 \
	fontconfig:i386	libc6 libncurses5 libstdc++6 tcsh libxext6 libx11-6 libxau6 \
	libxdmcp6 libfreetype6 qt4-dev-tools libqtwebkit-dev libpng-tools fontconfig wget x11-apps -yqq

# Fetch and make the .run file executable
RUN curl -LJO "$DOWNLOAD_LINK/$FILENAME" &&\
	chmod +x $FILENAME

CMD "./QuartusLiteSetup-16.1.0.196-linux.run"
