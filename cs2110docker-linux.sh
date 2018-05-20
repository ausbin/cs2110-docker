#!/bin/bash

[[ $(id -ng) != docker ]] && {
    # If not running as the docker user, re-exec myself
    exec sudo -g docker "$0" "$@"
}

workdir=~/Documents/cs2110-workdir
mkdir -p "$workdir" "$workdir/.complx"

docker pull ausbin/cs2110

exec docker run -it --rm -e "DISPLAY=$DISPLAY" \
                         -v /tmp/.X11-unix:/tmp/.X11-unix \
                         -v "$workdir:/home/developer/workdir" \
                         -v "$workdir/.complx:/home/developer/.config/complx" \
                         ausbin/cs2110
