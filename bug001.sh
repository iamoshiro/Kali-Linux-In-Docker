#!/bin/bash

# Apagar os arquivos criados pelo tightvncserver no diretório /tmp
rm -rf /tmp/dbus-* /tmp/pulse-*/ /tmp/ssh-* /tmp/.ICE-unix/ /tmp/.X11-unix/ /tmp/.xfsm-ICE-* /tmp/.X0-lock

# Passar varíavel de usuário e executar o tightvncserver
export USER=root
tightvncserver :0 -geometry 1280x800 -depth 16 -pixelformat rgb565

# Descomente a linha abaixo caso utilize o novnc
#/usr/share/novnc/utils/launch.sh --listen 5901 --vnc localhost:5900