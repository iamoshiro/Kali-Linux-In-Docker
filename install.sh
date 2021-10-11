#!/bin/bash
echo 'Criando uma imagem docker customizada do Kali Linux Bleeding-Edge'
docker build -t kali-bleeding-edge:version001 .
#sleep 100
echo 'Criando container do Kali com a imagem docker customizada do Kali Linux Bleeding-Edge'
docker run -t -d --name kali -p 55900:5900 -p 55901:5901 -v ~/Documents/docsKali:/tmp/docsKali kali-bleeding-edge:version001
echo 'Executando script para limpar erros no tightvncserver'
docker exec kali ./bug001.sh
echo 'Digite uma nova senha para o VNC Server (default é 1q2w3e)'
docker exec -i kali vncpasswd
