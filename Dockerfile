# Caso necessite usar o novnc basta descomentar a linha comentada, não esqueça de descomentar em bug001.sh também!
FROM kalilinux/kali-bleeding-edge
COPY bug001.sh /
RUN apt -y update && \
    apt -y upgrade && \
    apt -y autoremove && \
    apt clean && \
    DEBIAN_FRONTEND=noninteractive apt install -y \ 
    kali-tools-top10 \
    kali-desktop-xfce \
    tightvncserver \
    vim \
    #novnc \
    htop && \
    chmod +x bug001.sh
RUN (printf '1q2w3e\n1q2w3e\nn\n' && cat) | vncpasswd
RUN export USER=root && \
    tightvncserver :0 -geometry 1280x800 -depth 16 -pixelformat rgb565 && \
    sleep 5