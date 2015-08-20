#!/bin/bash
set -e
sudo docker build --rm=true -t junglebuild:latest .
dir=`mktemp -d` && git clone ../ $dir
homedir=`mktemp -d`
sudo docker run -t -i --privileged -v $dir:/junglebuild -v $homedir:/home/rjoost junglebuild:latest
