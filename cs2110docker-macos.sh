#!/bin/bash

workdir=~/Documents/cs2110-workdir
mkdir -p "$workdir" "$workdir/.complx"

docker pull ausbin/cs2110

exec docker run -it --rm -e "DISPLAY=:0" \
                         --mount "type=bind,src=$DISPLAY,dst=/tmp/.X11-unix/X0" \
                         -v "$workdir:/home/developer/workdir" \
                         -v "$workdir/.complx:/home/developer/.config/complx" \
                         ausbin/cs2110
