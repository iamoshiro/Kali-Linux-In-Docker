#!/bin/bash

# Delete the files created by the tightvnc server in the /tmp directory
rm -rf /tmp/dbus-* /tmp/pulse-*/ /tmp/ssh-* /tmp/.ICE-unix/ /tmp/.X11-unix/ /tmp/.xfsm-ICE-* /tmp/.X0-lock

# Export user variable and run tightvncserver
export USER=root
tightvncserver :0 -geometry 1280x800 -depth 16 -pixelformat rgb565

# Uncomment the line below if you use novnc
#/usr/share/novnc/utils/launch.sh --listen 5901 --vnc localhost:5900
