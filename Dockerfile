FROM bitnami/minideb:jessie

MAINTAINER David Barranco <d.baus@outlook.com>

ENV USER="csgo" 
ENV HOME="/home/$USER" 
ENV INSTALLDIR="$HOME/csgoInstallDir"

RUN dpkg --add-architecture i386

RUN install_packages lib32stdc++6 lib32gcc1 curl wget  gzip

RUN adduser --disabled-password --gecos "" $USER  

COPY rootfs /

USER $USER

WORKDIR $HOME

RUN wget  -qO- --no-check https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz | tar vxz

RUN ./steamcmd.sh +login anonymous +force_install_dir $INSTALLDIR +app_update 740 validate +quit

#CMD ["tail", "-F", "-n0", "/etc/hosts"]

EXPOSE 27015
ENTRYPOINT ["/run.sh"]










