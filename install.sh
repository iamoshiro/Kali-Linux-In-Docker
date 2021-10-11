#!/bin/bash
echo 'Creating a custom Kali Linux Bleeding-Edge docker image'
docker build -t kali-bleeding-edge:version001 .
#sleep 100
echo 'Creating Kali Linux container with Kali Custom Docker Image Linux Bleeding-Edge'
docker run -t -d --name kali -p 55900:5900 -p 55901:5901 -v ~/Documents/docsKali:/tmp/docsKali kali-bleeding-edge:version001
echo 'Running script to clear errors on tightvncserver'
docker exec kali ./bug001.sh
echo 'Enter a new password for the VNC Server (default is 1q2w3e)'
docker exec -i kali vncpasswd
