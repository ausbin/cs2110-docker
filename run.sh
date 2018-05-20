#!/bin/bash

[[ $(id -ng) != docker ]] && {
    # If not running as the docker user, re-exec myself
    exec sudo -g docker "$0" "$@"
}

docker pull ausbin/cs2110

exec docker run -it --rm -e "DISPLAY=$DISPLAY" -v /tmp/.X11-unix:/tmp/.X11-unix -v "$(pwd)/workdir:/home/developer/workdir" ausbin/cs2110
