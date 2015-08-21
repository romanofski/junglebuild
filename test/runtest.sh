#!/bin/bash
set -xe
sudo docker build --rm=true -t junglebuild:latest .
dir=`dirname $(pwd)`
homedir=`mktemp -d`
sudo docker run -t -i --privileged -v $dir:/junglebuild -v $homedir:/home/rjoost junglebuild:latest
