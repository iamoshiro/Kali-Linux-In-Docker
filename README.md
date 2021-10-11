# Kali Linux in Docker

Consult the article (writted in Brazil Portuguese) complete on [Medium](https://www.linkedin.com/in/iamoshiro/).

## Instructions

1. Clone the repository
~~~html
git clone https://github.com/iamoshiro/Kali-Linux-In-Docker
~~~
2. Give permission to install.sh
~~~shell
chmod +x install.sh
~~~
3. Run install.sh
~~~shell
./install.sh
~~~
* If you need use the novnc uncomment the dockerfile and bug001.sh.
* The default password to VNC is 1q2w3e, recommend change:
~~~shell
docker exec -i kali vncpasswd
~~~
* I found a litle issue to connection on VNC when we reboot the host machine or when reboot the container. The workarround is delete the files created by tightvncserver in /tmp directory. I created a little script to do this and is built-in on docker image, just run it and than the VNC Server will work again!

~~~shell
docker exec kali ./bug001.sh
~~~
