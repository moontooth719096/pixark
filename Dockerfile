FROM steamcmd/steamcmd:ubuntu-20

COPY docker-entrypoint.sh /docker-entrypoint.sh

ARG DEBIAN_FRONTEND=noninteractive

ENV MAXPLAYERS=10 \
    GAMEDIR=/pixark \
    SERVERNAME=kevinworld \
    SERVERPASSWORD=54358602 \
    GAME_ID=824360 \
    VALIDATE=true \
    PORT=27015 \
    QUERYPORT=27016 \
    CUBEPORT=27018 \
    RCONPORT=27017 \
    TZ=Asia/Taipei

VOLUME ["/pixark"]


EXPOSE 	${PORT}/udp \
        ${QUERYPORT}/udp \
        ${PORT}/tcp \
        ${QUERYPORT}/tcp \
        ${RCONPORT}/tcp \
        ${CUBEPORT}/tcp \
	${RCONPORT}/udp \
        ${CUBEPORT}/udp

RUN apt update && \
    apt-get install --no-install-recommends -y wget && \
    wget -nc https://dl.winehq.org/wine-builds/winehq.key && \
    mv winehq.key /usr/share/keyrings/winehq-archive.key && \
    wget -nc https://dl.winehq.org/wine-builds/ubuntu/dists/focal/winehq-focal.sources && \
    mv winehq-focal.sources /etc/apt/sources.list.d/ && \
    apt update && \
    apt install --no-install-recommends -y winehq-stable xvfb && \
    rm -rf /var/lib/apt/lists/* && \
    apt remove --purge -y wget && \
    apt clean && \
    apt autoremove -y && \
    chmod +x /docker-entrypoint.sh

ENTRYPOINT [ "/docker-entrypoint.sh" ]

CMD []