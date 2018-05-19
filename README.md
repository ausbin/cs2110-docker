Docker Image for CS 2110
========================

Overleaf: <https://v2.overleaf.com/read/zwczwxpnxgqp>

If you're in CS 2110 and on a Linux distro other than Ubuntu 16.04 or
on macOS, you can use this repository to make sure your code compiles
properly on our toolchain.

Once [you've installed Docker][1], you can get a 16.04 shell with our
build tools with the following commands:

    $ git clone https://github.gatech.edu/CS2110/cs2110-docker.git
    $ cd cs2110-docker
    $ sudo -g docker ./run.sh

All of your work is in the `workdir/` directory in this repository,
which will be the current directory when you log into the container.

[1]: https://docs.docker.com/install/
