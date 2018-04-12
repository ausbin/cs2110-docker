#!/bin/bash

[[ $(id -ng) != docker ]] && {
    printf 'error: run this as:\n\n\tsudo -g docker ./complx.sh\n\ninstead\n' >&2
    exit 2
}

exec docker run -it --rm -e "DISPLAY=$DISPLAY" -v /tmp/.X11-unix:/tmp/.X11-unix \
                         -v "$(pwd)/workdir:/home/developer/workdir" \
                         -v "$(pwd)/.complx:/home/developer/.config/complx" \
                         ausbin/cs2110 complx
