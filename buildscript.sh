#!/bin/sh

docker build -t quartus .
xhost +localhost
docker run -it --rm --env="DISPLAY=host.docker.internal:0" --name quartus-container quartus
