FROM bitnami/minideb:jessie

MAINTAINER David Barranco <d.baus@outlook.com>

ENV USER="csgo"  
ENV HOME="/home/$USER" 
ENV INSTALLDIR="$HOME/csgoInstallDir"


RUN install_packages lib32stdc++6 lib32gcc1 wget  gzip

RUN adduser --disabled-password --gecos "" $USER  

COPY rootfs /

USER $USER

WORKDIR $HOME

RUN wget  -qO- --no-check https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz | tar vxz

EXPOSE 27015
ENTRYPOINT ["/run.sh"]










