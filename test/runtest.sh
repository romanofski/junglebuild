#!/bin/bash
sudo docker build --rm=true -t junglebuild:latest .
dir=`mktemp -d` && git clone ../ $dir
sudo docker run -t -i --privileged -v $dir:/junglebuild junglebuild:latest
