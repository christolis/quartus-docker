#!/bin/sh

docker build --platform linux/amd64 -t quartus .
#xhost +localhost
docker run --platform linux/amd64 -it --rm --env="DISPLAY=host.docker.internal:0" --name quartus-container quartus
