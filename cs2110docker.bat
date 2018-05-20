@echo off

set workdir=%HOMEDRIVE%%HOMEPATH%\Documents\cs2110-workdir
md "%workdir%
md "%workdir%\.complx

rem Start XMing if it's not already running
"C:\Program Files (x86)\Xming\Xming.exe" :0 -clipboard -multiwindow

docker pull ausbin/cs2110
docker run -it --rm -e "DISPLAY=docker.for.win.host.internal:0"^
                    --mount "type=bind,src=%workdir%,dst=/home/developer/workdir"^
                    --mount "type=bind,src=%workdir%\.complx,dst=/home/developer/.config/complx"^
                    ausbin/cs2110
