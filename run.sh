#!/bin/bash

[[ $(id -ng) != docker ]] && {
    printf 'error: run this as:\n\n\tsudo -g docker ./run.sh\n\ninstead\n' >&2
    exit 2
}

exec docker run -it --rm -v "$(pwd)/workdir:/home/developer/workdir" ausbin/cs2110
