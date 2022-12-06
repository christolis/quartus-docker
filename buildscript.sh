#!/bin/sh

docker build -t quartus .
docker run -it --rm --name quartus-container quartus
