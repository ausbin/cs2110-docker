#!/bin/bash

workdir=~/Documents/cs2110-workdir
mkdir -p "$workdir" "$workdir/.complx"

docker pull ausbin/cs2110

xhost +localhost
exec docker run -it --rm -e "DISPLAY=docker.for.mac.host.internal:0" \
                         -v "$workdir:/home/developer/workdir" \
                         -v "$workdir/.complx:/home/developer/.config/complx" \
                         ausbin/cs2110
