#!/bin/bash

[[ $(id -ng) != docker ]] && {
    printf 'error: run this as:\n\n\tsudo -g docker ./run.sh\n\ninstead\n' >&2
    exit 2
}

docker pull ausbin/cs2110

exec docker run -it -v "$(pwd)/workdir:/home/developer/workdir" ausbin/cs2110
